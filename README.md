# cybersecurity-portfolio

Practical cybersecurity projects, security assessments, investigations, and technical documentation.

## Featured Projects

### [01 — Meridian Build Group Cybersecurity Risk Assessment](./01-meridian-risk-assessment/)

A simulated initial cybersecurity risk assessment for a fictional South Florida commercial construction and real-estate-development company.

The project demonstrates:

- Engagement scoping and assessment methodology
- Asset identification and business-impact classification
- Cybersecurity risk analysis and prioritization
- Executive-level reporting
- Remediation planning
- NIST Cybersecurity Framework 2.0 and CIS Controls mapping

> All organizations, evidence, findings, risk ratings, and business data are fictional and simulated. No real organization was assessed.

### [02 — Meridian Build Group Business Email Compromise Incident Response](./02-business-email-compromise-response/)

A simulated Microsoft 365 incident-response investigation involving a compromised accounts-payable mailbox and an attempted ACH-payment diversion at the same fictional company.

The project demonstrates:

- Incident intake, severity classification, and response coordination
- Microsoft Entra ID and Exchange Online log analysis
- Evidence handling and incident timeline reconstruction
- Business email compromise and payment-fraud investigation
- Containment, eradication, recovery, and monitoring planning
- Defensive KQL hunting queries and reproducible evidence validation in R
- Executive and stakeholder communications
- NIST Cybersecurity Framework 2.0, NIST SP 800-61 Rev. 3, and CIS Controls v8.1 mapping

> All organizations, identities, domains, IP addresses, logs, messages, indicators, financial values, findings, and response actions are fictional and simulated. No real incident occurred and no real organization was investigated.

### 03 — [Authentication Anomaly Analyzer](https://github.com/amoseyal/auth-anomaly-analyzer)

A Python-based security analytics tool that analyzes structured authentication logs for suspicious login behavior.

The project demonstrates:
- Python-based security log analysis with pandas
- Brute-force and password-spraying detection
- Correlation of successful logins following repeated authentication failures
- Time-window and source-IP-based detection logic
- CSV input validation and structured alert export
- Command-line interface development
- Automated unit and integration testing with pytest

The project is maintained as a standalone repository with source code, synthetic authentication data, documentation, and a 14-test automated test suite.
