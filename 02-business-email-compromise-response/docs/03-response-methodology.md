# Incident Response Methodology

## Operational workflow

The workflow is aligned to NIST SP 800-61 Rev. 3, which integrates incident response across all six NIST CSF 2.0 Functions. The phases below are this case study's operational organization; they are not presented as a verbatim NIST lifecycle:

1. **Prepare / Govern–Identify–Protect:** define contacts, logging, payment controls, authority, and evidence procedures.
2. **Detect and analyze / Detect:** validate the report, preserve logs, build a timeline, scope affected entities, and test competing hypotheses.
3. **Contain, eradicate, and recover / Respond–Recover:** stop access, remove persistence, restore trusted access, notify affected parties, and monitor.
4. **Post-incident activity / Govern–Identify–Protect:** capture lessons, assign improvements, and test the playbook.

## Severity decision

| Severity | Example criterion |
|---|---|
| SEV-1 Critical | Confirmed material funds transfer, widespread tenant compromise, destructive activity, or severe safety/operational impact |
| SEV-2 High | Confirmed mailbox compromise with active payment-fraud attempt; payment held or impact bounded |
| SEV-3 Moderate | Suspicious activity requiring investigation without confirmed compromise or material transaction |
| SEV-4 Low | Benign event, blocked attempt, or routine request |

This scenario is SEV-2 because unauthorized mailbox activity and an active high-value payment-diversion attempt are supported by the supplied evidence, but the transfer was prevented and scope remained bounded.

## Analytical standard

Each conclusion is labeled:

- **Confirmed:** directly supported by one or more supplied records and internally consistent.
- **Probable:** best explanation supported by multiple facts, with a meaningful evidentiary gap.
- **Possible:** plausible but supported by limited or ambiguous evidence.
- **Unknown:** evidence is insufficient to decide.

Confidence does not replace evidence. A highly confident inference is still an inference.

## Time handling

Source events are normalized to UTC using ISO 8601 timestamps ending in `Z`. Documents also display Eastern Daylight Time (UTC−04:00) for business context. Daylight-saving assumptions are fixed to the August 2026 scenario period.
