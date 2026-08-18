# Meridian Build Group — Business Email Compromise Incident Response

> **Portfolio simulation:** Meridian Build Group, LLC (MBG), its personnel, domains, systems, alerts, logs, messages, vendors, financial amounts, evidence, and response actions are fictional. All technical evidence in this repository is synthetic. No real incident occurred and no real organization was investigated.

| Document control | Value |
|---|---|
| Version | 1.0 |
| Status | Simulated incident-response case study |
| Scenario period | August 11–12, 2026 |
| Prepared for | Cybersecurity portfolio demonstration |
| Classification | Public / synthetic content only |
| Incident severity | Simulated SEV-2 (High) |

## Executive overview

This case study follows a suspected business email compromise involving a fictional accounts-payable user at a South Florida commercial construction and real-estate-development company. An adversary uses the mailbox to interfere with a subcontractor payment conversation and request a change to ACH instructions. A finance employee follows the company’s out-of-band callback procedure, detects the discrepancy, and prevents a $184,250 payment from being redirected.

Synthetic Microsoft Entra ID, Exchange Online, and email-trace records indicate an unfamiliar sign-in, creation of a mailbox rule that moved finance-related messages to deleted items, and external messages sent from the compromised mailbox. The evidence supports account and mailbox compromise; the precise initial-access mechanism remains **unconfirmed**. Adversary-in-the-middle phishing is a working hypothesis, not a finding.

## What this project demonstrates

- Incident intake, classification, scope, and severity decisions
- Evidence preservation and chain-of-custody discipline
- Entra ID and Exchange Online log analysis
- Timeline construction and hypothesis testing
- Business-focused BEC and payment-fraud response
- Containment, eradication, recovery, and monitoring decisions
- Executive and stakeholder communications
- Mapping to NIST CSF 2.0, NIST SP 800-61 Rev. 3, and CIS Controls v8.1
- Explicit separation of confirmed facts, analytical inferences, and unknowns

## Case outcome

| Measure | Simulated result |
|---|---|
| Attempted payment diversion | $184,250 |
| Financial loss | $0; payment held before release |
| Confirmed compromised identity | One user account |
| Confirmed affected mailbox | One Exchange Online mailbox |
| Confirmed recipient exposure | One fictional subcontractor contact |
| Evidence of tenant-wide compromise | Not identified in the supplied evidence |
| Initial-access mechanism | Unknown |
| Data exfiltration | Not established |

“Not identified” does not mean “proved absent.” The conclusion is bounded by the synthetic evidence supplied to the analyst.

## Repository guide

| Artifact | Purpose |
|---|---|
| [Executive summary](docs/01-executive-summary.md) | Management decision support |
| [Scenario, scope, and rules](docs/02-scenario-and-scope.md) | Case boundaries and assumptions |
| [Incident response methodology](docs/03-response-methodology.md) | Repeatable workflow and severity model |
| [Evidence handling](docs/04-evidence-handling.md) | Evidence register and integrity limitations |
| [Incident timeline](docs/05-incident-timeline.md) | Event reconstruction in UTC and Eastern Time |
| [Technical analysis](docs/06-technical-analysis.md) | Findings, hypotheses, and confidence |
| [Response actions](docs/07-containment-eradication-recovery.md) | Action sequence and validation criteria |
| [Communications](docs/08-communications.md) | Executive and stakeholder updates |
| [Lessons and control mapping](docs/09-lessons-and-control-mapping.md) | Improvement plan and framework alignment |
| [Architecture and attack path](docs/10-diagrams.md) | Visual incident flow and trust relationships |
| [Synthetic evidence](evidence/) | CSV evidence used by the case |
| [Hunting queries](queries/hunting-queries.kql) | Illustrative Microsoft security queries |
| [Authenticity review](docs/11-authenticity-and-quality-review.md) | Credibility checks and real-case boundaries |
| [Evidence validator](scripts/validate_evidence.R) | Reproducible checks and timeline output |

## Quick validation

From the repository root:

```bash
Rscript scripts/validate_evidence.R
```

The script uses base R only. It checks required fields, timestamps, documentation-only IP ranges, event ordering, duplicate event IDs, and the cross-file incident timeline. Generated results are written to `outputs/`.

## Ethical and professional boundary

This project contains defensive analysis only. Hunting queries are illustrative and must be adapted to a real tenant’s schema, licensing, retention, time zone, and authorization. Response actions are not presented as proof that a real Microsoft 365 environment was accessed or tested.
