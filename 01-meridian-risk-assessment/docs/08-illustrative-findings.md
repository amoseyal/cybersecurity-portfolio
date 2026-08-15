# Illustrative Findings

> **Important:** The conditions below are invented solely to demonstrate professional finding construction. They are not observations about a real company. During a real assessment, unsupported conditions would remain open discovery items, not findings.

## SIM-F-01 — Payment-detail changes lack independent verification

**Simulated condition:** Vendor bank-detail changes received by email can be entered and approved without a documented callback to a previously verified contact and without enforced separation between maintenance and payment release.  
**Criteria / expected practice:** Meridian-approved payment procedures should require independent verification and authorization proportionate to transaction risk; access should enforce separation where feasible.  
**Plausible root cause to validate:** Rapid growth and reliance on informal email-based processes may have outpaced documented finance controls.  
**Risk:** A compromised vendor or employee mailbox could redirect an ACH/wire payment.  
**Inherent risk:** Critical (4 × 5 = 20).  
**Recommendation:** Require out-of-band verification using trusted master data, dual approval, segregation of duties, bank alerts/limits, and documented exceptions.  
**Validation evidence:** Sanitized workflow, roles, sample changes, approval logs, bank-control configuration.  
**Mappings:** NIST CSF 2.0 GV.RR, PR.AA, DE.CM, RS.MA; CIS 5, 6, 14.

## SIM-F-02 — Privileged identity protections are incomplete

**Simulated condition:** Some Entra ID and MSP administrative access is not covered by phishing-resistant MFA, dedicated admin identities, least-privilege roles, or periodic review.  
**Criteria / expected practice:** Privileged access should be uniquely attributable, strongly authenticated, least-privileged, reviewed, and monitored.  
**Plausible root cause to validate:** Administrative convenience and outsourced support may have produced standing access without a formal privileged-access standard.  
**Risk:** Credential theft could lead to tenant compromise, data exposure, persistence, and recovery impairment.  
**Inherent risk:** Critical (4 × 5 = 20).  
**Recommendation:** Inventory privileged access, remove standing excess, use separate named admin accounts, enforce strong MFA/Conditional Access, protect break-glass accounts, and monitor privileged activity.  
**Validation evidence:** Role and MFA exports, CA policies, admin sign-ins, emergency-account procedure, MSP access records.  
**Mappings:** NIST PR.AA, DE.CM, GV.SC; CIS 5, 6, 8, 15.

## SIM-F-03 — Recovery capability is not demonstrated

**Simulated condition:** Backup coverage, credential separation, immutability, and recent business-owner restore tests cannot be evidenced for QuickBooks, M365 data, and critical endpoint/project information.  
**Criteria / expected practice:** Recovery arrangements should cover approved critical assets and demonstrate achievement of management-approved RTO/RPO through testing.  
**Plausible root cause to validate:** Backup administration may be technology-led without a completed business-impact analysis or assigned business owners.  
**Risk:** Ransomware, deletion, or regional disruption could exceed tolerable downtime/data loss.  
**Inherent risk:** High (3 × 5 = 15).  
**Recommendation:** Approve RTO/RPO, document system coverage, isolate backup administration, implement immutable/offline copies where appropriate, and perform recurring restore tests.  
**Validation evidence:** Architecture, job results, access list, retention settings, restore-test records.  
**Mappings:** NIST ID.IM, PR.DS, RC.RP; CIS 11.

## SIM-F-04 — External collaboration is not regularly recertified

**Simulated condition:** SharePoint/OneDrive links and Procore subcontractor accounts persist after the business need or project completion, and anonymous links are not centrally restricted.  
**Criteria / expected practice:** External access should have an owner, business purpose, appropriate sharing method, expiry/review date, and timely removal.  
**Plausible root cause to validate:** Decentralized project collaboration and schedule pressure may make access provisioning faster than closeout deprovisioning.  
**Risk:** Sensitive contracts, bids, plans, employee information, or project data may remain accessible to unauthorized external parties.  
**Inherent risk:** High (3 × 4 = 12).  
**Recommendation:** Assign data owners, restrict sharing defaults, use expiration/domain controls, conduct project-closeout reviews, and monitor external sharing.  
**Validation evidence:** Tenant settings, links report, guest/project roster, access-review samples.  
**Mappings:** NIST PR.AA, PR.DS, GV.SC; CIS 3, 5, 6, 15.

## SIM-F-05 — MSP administrative access creates unmanaged concentration risk

**Simulated condition:** MSP personnel use broad or shared administrative access, while approval, logging, periodic recertification, emergency revocation, and security obligations are not fully defined.  
**Criteria / expected practice:** Third-party privileged access should be named, least-privileged, strongly authenticated, logged, periodically recertified, and governed by incident and termination obligations.  
**Plausible root cause to validate:** The service relationship may have evolved operationally without corresponding access-governance and contract updates.  
**Risk:** Compromise or misuse of the MSP access path could affect multiple critical services and delay accountability.  
**Inherent risk:** High (3 × 4 = 12).  
**Recommendation:** Require named identities, least privilege, MFA, time-bounded elevation where feasible, logging, quarterly review, rapid revocation, incident notice, and evidence rights.  
**Validation evidence:** Contract excerpts, access list, remote-tool design, logs, review records, offboarding sample.  
**Mappings:** NIST GV.SC, PR.AA, DE.CM; CIS 5, 6, 8, 15.
