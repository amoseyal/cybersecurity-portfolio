# Evidence Handling

## Evidence principles

In a real incident, collection should follow organizational policy, counsel direction, contractual duties, and applicable law. Export original records before changing the account when practical, but do not delay urgent containment when loss is imminent. Record who collected each artifact, when, from which source, using which query or export, and whether the export is complete.

## Synthetic evidence register

| ID | Artifact | Simulated source | Purpose | Integrity status |
|---|---|---|---|---|
| EV-01 | `signins.csv` | Microsoft Entra sign-in export | Authentication activity and session context | Synthetic; internally validated |
| EV-02 | `cloud-audit-log.csv` | Analyst-normalized Microsoft Purview and Entra audit records | Mailbox, rule, message, and response actions | Synthetic; internally validated; not a native single-service export |
| EV-03 | `email-trace.csv` | Exchange Online message trace | Sender, recipient, direction, and delivery | Synthetic; internally validated |
| EV-04 | `incident-timeline.csv` | Analyst-normalized case timeline | Cross-source event reconstruction | Derived from EV-01–EV-03 plus intake facts |
| EV-05 | `ioc-register.csv` | Analyst register | Indicators and defensive disposition | Synthetic; documentation ranges only |

## Integrity limitations

These files were authored for a portfolio simulation. `cloud-audit-log.csv` intentionally normalizes events that a real investigator may retrieve from separate Microsoft audit sources; it is not represented as a native provider export. File hashes would only demonstrate that the portfolio copies had not changed after hashing; they cannot establish authenticity as service-provider exports. Accordingly, the project does not present fabricated hash values or claim forensic provenance.

In a real case, the analyst should retain original exports read-only, calculate hashes with an approved tool, document time synchronization and retention boundaries, and analyze working copies. Provider-side logs may be mutable in presentation or incomplete because of licensing, ingestion delay, retention, filtering, or service limitations.

## Chain-of-custody template

| Field | Required entry |
|---|---|
| Evidence ID | Unique identifier |
| Collector | Named person or service account |
| Collection time | UTC timestamp |
| Source | Tenant, workload, device, mailbox, or system |
| Method | Export, API, query, or image procedure |
| Scope | Time range and filters |
| Original filename | Provider or acquisition name |
| Hash | Approved algorithm and digest, where applicable |
| Storage | Restricted evidence location |
| Transfers | Date, person, purpose, and new custodian |
