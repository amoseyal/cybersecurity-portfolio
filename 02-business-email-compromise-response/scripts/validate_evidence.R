script_arg <- grep("^--file=", commandArgs(), value = TRUE)
script_path <- if (length(script_arg)) sub("^--file=", "", script_arg[1]) else "scripts/validate_evidence.R"
repo <- normalizePath(file.path(dirname(script_path), ".."), mustWork = TRUE)
evidence_dir <- file.path(repo, "evidence")
output_dir <- file.path(repo, "outputs")
dir.create(output_dir, showWarnings = FALSE, recursive = TRUE)

fail <- function(...) stop(..., call. = FALSE)
read_ev <- function(name) read.csv(file.path(evidence_dir, name), stringsAsFactors = FALSE, check.names = FALSE, na.strings = c(""))
require_columns <- function(d, columns, name) {
  missing <- setdiff(columns, names(d))
  if (length(missing)) fail(name, " missing columns: ", paste(missing, collapse = ", "))
}
parse_utc <- function(x, name) {
  y <- as.POSIXct(x, format = "%Y-%m-%dT%H:%M:%SZ", tz = "UTC")
  if (anyNA(y)) fail(name, " contains invalid UTC timestamps")
  y
}

signins <- read_ev("signins.csv")
audit <- read_ev("cloud-audit-log.csv")
mail <- read_ev("email-trace.csv")
timeline <- read_ev("incident-timeline.csv")
iocs <- read_ev("ioc-register.csv")

require_columns(signins, c("event_id","timestamp_utc","user_principal_name","ip_address","status","correlation_id"), "signins.csv")
require_columns(audit, c("event_id","timestamp_utc","workload","operation","user_id","client_ip","session_correlation_id"), "cloud-audit-log.csv")
require_columns(mail, c("event_id","timestamp_utc","message_id","sender","recipient","amount_usd","analyst_classification"), "email-trace.csv")
require_columns(timeline, c("timeline_id","timestamp_utc","event_type","summary","evidence_refs","confidence"), "incident-timeline.csv")
require_columns(iocs, c("indicator_id","type","value","context","confidence","disposition"), "ioc-register.csv")

all_ids <- c(signins$event_id, audit$event_id, mail$event_id, timeline$timeline_id, iocs$indicator_id)
if (anyDuplicated(all_ids)) fail("Duplicate event or indicator IDs detected")
signins$time <- parse_utc(signins$timestamp_utc, "signins.csv")
audit$time <- parse_utc(audit$timestamp_utc, "cloud-audit-log.csv")
mail$time <- parse_utc(mail$timestamp_utc, "email-trace.csv")
timeline$time <- parse_utc(timeline$timestamp_utc, "incident-timeline.csv")
if (is.unsorted(timeline$time)) fail("Incident timeline is not chronological")

source_times <- c(setNames(signins$time, signins$event_id), setNames(audit$time, audit$event_id), setNames(mail$time, mail$event_id))
timeline_refs <- strsplit(timeline$evidence_refs, "\\|", fixed = FALSE)
referenced_ids <- unique(unlist(timeline_refs))
missing_refs <- setdiff(referenced_ids[!grepl("^INTAKE-", referenced_ids)], names(source_times))
if (length(missing_refs)) fail("Timeline references unknown evidence IDs: ", paste(missing_refs, collapse = ", "))
for (i in seq_len(nrow(timeline))) {
  refs <- timeline_refs[[i]]
  refs <- refs[!grepl("^INTAKE-", refs)]
  if (length(refs) && any(as.numeric(timeline$time[i]) != as.numeric(source_times[refs]))) {
    fail("Timeline timestamp does not match referenced evidence for ", timeline$timeline_id[i])
  }
}

expected_et <- paste0(format(timeline$time - 4 * 3600, "%Y-%m-%d %H:%M:%S", tz = "UTC"), " EDT")
if (!all(timeline$timestamp_et == expected_et)) fail("Eastern-time conversion is inconsistent with UTC-04:00")

allowed_ips <- c("192.0.2.44", "192.0.2.80", "203.0.113.77")
observed_ips <- unique(c(signins$ip_address, audit$client_ip))
if (length(setdiff(observed_ips, allowed_ips))) fail("Unexpected non-documentation IP address detected")
if (!all(mail$amount_usd[mail$analyst_classification == "Fraudulent"] == 184250)) fail("Fraudulent message amounts are inconsistent")
if (!any(audit$operation == "New-InboxRule") || !any(audit$operation == "Remove-InboxRule")) fail("Expected inbox-rule lifecycle not present")
if (!any(signins$status == "Success" & signins$ip_address == "203.0.113.77")) fail("Expected unfamiliar successful sign-in not present")
bad_signin <- signins[signins$status == "Success" & signins$ip_address == "203.0.113.77", ][1,]
bad_exchange <- audit[audit$user_id == bad_signin$user_principal_name & audit$client_ip == bad_signin$ip_address & audit$operation == "New-InboxRule", ][1,]
if (nrow(bad_exchange) != 1L || bad_exchange$time <= bad_signin$time) fail("Cross-service event sequence is inconsistent")
if (bad_exchange$session_correlation_id == bad_signin$correlation_id) fail("Entra correlation ID and Exchange session ID must remain distinct")

summary <- data.frame(
  check = c("Sign-in events", "Audit events", "Email-trace events", "Timeline events", "IOC entries", "Duplicate IDs", "UTC timestamps", "Eastern-time conversions", "Evidence references", "Documentation IPs", "Fraud amount consistency", "Chronological timeline", "Cross-service sequence", "Distinct service identifiers"),
  result = c(nrow(signins), nrow(audit), nrow(mail), nrow(timeline), nrow(iocs), "Pass", "Pass", "Pass", "Pass", "Pass", "Pass", "Pass", "Pass", "Pass"),
  stringsAsFactors = FALSE
)
write.csv(summary, file.path(output_dir, "validation-summary.csv"), row.names = FALSE)
write.csv(timeline[order(timeline$time), setdiff(names(timeline), "time")], file.path(output_dir, "normalized-timeline.csv"), row.names = FALSE)
cat("Evidence validation passed.\n")
cat("Events:", nrow(signins) + nrow(audit) + nrow(mail), "| Timeline entries:", nrow(timeline), "| IOCs:", nrow(iocs), "\n")
