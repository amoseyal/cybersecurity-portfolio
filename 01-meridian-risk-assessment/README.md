# Meridian Build Group — Initial Cybersecurity Risk Assessment

> **Portfolio simulation:** Meridian Build Group, LLC (MBG) is fictional. All people, systems, evidence, findings, ratings, and business data in this project are simulated. No real organization was assessed, and no control was tested or observed.

| Document control | Value |
|---|---|
| Version | 1.1 |
| Status | Simulated assessment package — not issued to a client |
| Prepared for | Cybersecurity portfolio demonstration |
| Scenario date | August 2026 |
| Classification | Public / synthetic content only |

## Project purpose

This case study demonstrates how an initial, non-invasive cybersecurity risk assessment could be planned and communicated for an approximately 85-person South Florida commercial construction and real-estate-development company. MBG operates from a main office, active job sites, and remote locations, with a small internal IT function supported by a managed service provider (MSP).

The scenario emphasizes risks that matter in construction: business email compromise, fraudulent vendor-bank changes, subcontractor collaboration, mobile access from job sites, project-document availability, privileged MSP access, and hurricane-driven continuity needs.

## Environment in the scenario

- Microsoft Entra ID and Microsoft 365 (Exchange Online, Teams, SharePoint, OneDrive)
- Procore for project delivery and subcontractor collaboration
- QuickBooks Enterprise and ACH/wire workflows
- Windows endpoints, company mobile devices, and BYOD
- Main-office network, corporate/guest Wi-Fi, firewall, and VPN
- MSP administration and third-party access

## Deliverables

| Artifact | What it demonstrates |
|---|---|
| [Executive summary](docs/01-executive-summary.md) | Business-focused communication and decision support |
| [Engagement scope](docs/02-engagement-scope.md) | Clear boundaries, assumptions, and limitations |
| [Methodology](docs/03-assessment-methodology.md) | Evidence-led assessment design and framework alignment |
| [CIA criteria](docs/04-business-impact-criteria.md) | Repeatable business-impact classification |
| [Asset inventory](docs/05-asset-inventory.md) | Asset, data, process, identity, and dependency analysis |
| [Discovery questionnaire](docs/06-discovery-questionnaire.md) | Interview and evidence-request planning |
| [Risk method](docs/07-risk-scoring-methodology.md) | Transparent likelihood × impact model |
| [Illustrative findings](docs/08-illustrative-findings.md) | Professional finding structure without fabricated observations |
| [Risk register](data/risk-register.csv) | Traceable prioritization and control mapping |
| [Remediation roadmap](docs/09-remediation-roadmap.md) | Practical sequencing, ownership, and success measures |
| [Architecture](docs/10-environment-diagram.md) | Trust relationships and assessment focus points |
| [Evidence status](docs/11-evidence-register.md) | Explicit separation of facts, assumptions, and unknowns |
| [Quality review](docs/12-authenticity-and-quality-review.md) | Credibility checks, limitations, and real-engagement gates |

## Headline modeled risk profile

Using the explicitly hypothetical conditions in this case study, the highest modeled inherent-risk themes are financial fraud through compromised email/payment workflows, tenant or privileged-account compromise, ransomware and recovery failure, unmanaged external sharing, and concentrated MSP access. These are **illustrative risk hypotheses**, not factual claims about a real environment.

## How to read this project

Start with the executive summary, then review scope and methodology. The evidence register explains what the scenario supplies and what remains unknown. Finding IDs (`SIM-F-01` etc.) link to risk IDs (`R-01` etc.) in the CSV register. Recommendations map selectively to NIST CSF 2.0 outcomes and CIS Controls v8 at the control-family level; the mappings are informative, not a compliance determination.

## Limitations

This is a portfolio artifact, not an audit, attestation, penetration test, legal opinion, or compliance certification. Product licensing, configurations, log data, device counts, control maturity, and operating effectiveness remain unknown unless the scenario explicitly states otherwise.
