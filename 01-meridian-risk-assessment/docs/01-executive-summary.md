# Executive Summary

**Organization:** Meridian Build Group, LLC (fictional)  
**Engagement:** Initial Cybersecurity Risk Assessment (simulated)  
**Assessment status:** Portfolio case study; no real testing performed

## Management view

Meridian’s operating model combines high-value payment activity, time-sensitive construction operations, distributed workers, subcontractor collaboration, and outsourced IT administration. That combination makes identity security, payment integrity, third-party access, and recoverability the most important initial risk themes.

The scenario does not provide sufficient evidence to conclude whether controls are effective. Instead, this assessment records five prioritized **risk hypotheses** to validate during discovery:

1. A compromised mailbox or manipulated vendor-change request could redirect an ACH or wire payment.
2. Weak or inconsistent identity safeguards could permit account takeover or tenant-wide compromise.
3. Ransomware or destructive activity could interrupt email, finance, endpoint, or project operations beyond tolerable recovery windows.
4. External sharing and subcontractor access could expose contracts, plans, bids, or project data.
5. Broad or poorly governed MSP privileges could create a high-impact concentration of access.

## Illustrative priority profile

| Priority | Risk hypothesis | Inherent score | Required validation |
|---|---|---:|---|
| Critical | Payment diversion / business email compromise | 20 | Payment workflow, callbacks, dual approval, mailbox controls |
| Critical | Entra ID or privileged-account compromise | 20 | MFA, Conditional Access, roles, break-glass design, logs |
| High | Ransomware with inadequate recovery capability | 15 | Backup isolation, coverage, RTO/RPO, restore tests |
| High | Overshared project and corporate information | 12 | SharePoint/OneDrive/Procore settings and access reviews |
| High | MSP privileged-access concentration | 12 | Named accounts, least privilege, MFA, logging, contract duties |

Scores assume the hypothetical conditions documented in each finding; they do not represent observed weaknesses.

## Recommended management actions

Within 30 days, confirm accountable owners, inventory privileged identities, validate MFA coverage, require out-of-band verification for payment-detail changes, and test recovery of a critical data set. Within 90 days, implement risk-based Conditional Access, formalize joiner/mover/leaver and external-access reviews, constrain and monitor MSP access, and document incident escalation. Within 6–12 months, establish resilient backup/recovery, endpoint and mobile baselines, centralized security monitoring, annual tabletop exercises, and third-party governance.

## Decision requested

Authorize a bounded evidence-gathering phase and assign executive owners for finance fraud, identity, recovery, project data, and MSP governance. Findings should only be finalized after evidence is obtained and contradictory evidence is considered.

