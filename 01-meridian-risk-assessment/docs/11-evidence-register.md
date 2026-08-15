# Evidence and Assumption Register

## Scenario-supplied facts

| ID | Item | Classification |
|---|---|---|
| SF-01 | Fictional South Florida commercial construction and real-estate-development firm | Scenario fact |
| SF-02 | Approximately 85 employees; office, job-site, and remote work | Scenario fact |
| SF-03 | Microsoft Entra ID/M365, SharePoint/OneDrive, and Procore are used | Scenario fact |
| SF-04 | QuickBooks Enterprise and ACH/wire workflows are used | Scenario fact |
| SF-05 | Windows endpoints, mobile/BYOD, office Wi-Fi, guest Wi-Fi, and VPN are present | Scenario fact |
| SF-06 | MSP has an administrative role and subcontractors exchange/access project information | Scenario fact |
| SF-07 | No dedicated cybersecurity employee | Scenario fact |

## High-priority unknowns

| ID | Unknown | Why it matters |
|---|---|---|
| ER-01 | Exact licensing, MFA, Conditional Access, authentication methods | Account-takeover resistance |
| ER-02 | Privileged/admin/service/emergency identity roster | Blast radius and accountability |
| ER-03 | MSP access method, roles, logs, reviews, contract duties | Supply-chain concentration risk |
| ER-04 | QuickBooks hosting and backup architecture | Access and recovery design |
| ER-05 | Payment-change verification and segregation | Fraud prevention |
| ER-06 | Endpoint count, EDR, encryption, patching, local admin | Ransomware and data-loss exposure |
| ER-07 | MDM/MAM and BYOD data controls | Mobile/job-site access risk |
| ER-08 | Network topology, segmentation, firewall/VPN configuration | Lateral movement and remote access |
| ER-09 | External sharing and Procore guest lifecycle | Project-data exposure |
| ER-10 | Logging sources, retention, monitoring, response SLAs | Detection and investigation |
| ER-11 | Backup coverage, isolation, RTO/RPO, restore tests | Resilience and continuity |
| ER-12 | Policies, incident plan, training, insurance requirements | Governance and response readiness |

## Illustrative-only data

The conditions in `SIM-F-01` through `SIM-F-05`, all risk scores, remediation states, and control-effectiveness statements are simulated. Residual risk is deliberately recorded as `Not assessed`.

