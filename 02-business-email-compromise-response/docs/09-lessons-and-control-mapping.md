# Lessons Learned and Control Mapping

## What worked in the scenario

- The project accountant used trusted, out-of-band contact information.
- Finance could place the payment on hold quickly.
- Finance escalated the discrepancy rather than replying in the compromised thread.
- Identity and mailbox containment actions had clear ownership.

## Improvement plan

| ID | Improvement | Owner | Target | Success measure | NIST CSF 2.0 | CIS Controls v8.1 |
|---|---|---|---|---|---|---|
| IM-01 | Require phishing-resistant MFA for Finance and privileged roles where feasible | IT / MSP | 60 days | 100% of scoped identities enrolled; exceptions approved | PR.AA | 6 |
| IM-02 | Alert on suspicious inbox rules, external forwarding, unusual sign-ins, and authentication changes | IT / MSP | 30 days | Test events create owned alerts within target time | DE.CM, RS.AN | 8, 13 |
| IM-03 | Formalize vendor-bank-change callback and dual approval | Controller | 30 days | Sampled changes contain independent verification evidence | PR.AA, PR.DS | 5, 6 |
| IM-04 | Create a Finance/IT BEC response runbook with bank and insurer contacts | Incident lead | 45 days | Tabletop completes without missing contacts or authority | GV.RR, RS.MA | 17 |
| IM-05 | Validate M365 audit coverage, retention, time synchronization, and export procedure | IT / MSP | 30 days | Evidence test retrieves required fields for agreed window | GV.RM, DE.CM | 8 |
| IM-06 | Review mailbox delegation, forwarding, OAuth consent, and privileged-role assignments quarterly | IT | 90 days | Review record has owner, exceptions, and closure dates | PR.AA, ID.AM | 5, 6 |
| IM-07 | Add payment-fraud scenarios to security awareness for Finance and project teams | Finance / HR | 60 days | Scenario exercise measures reporting and callback behavior | PR.AT | 14 |
| IM-08 | Establish 14-day post-BEC heightened monitoring checklist | SOC / MSP | 45 days | Checklist tested and assigned in tabletop | RS.AN, RS.MI | 13, 17 |

Mappings are selective and informative. They do not establish framework implementation, maturity, or compliance.

## Tabletop questions

1. Who can place an ACH or wire on hold after hours?
2. How is a vendor’s trusted callback number established and protected from unauthorized changes?
3. Can the MSP disable an account, revoke refresh tokens, validate application-session effects, and preserve audit data without waiting for a tenant administrator?
4. What happens if the affected mailbox belongs to the controller, CEO, or a Global Administrator?
5. Which Microsoft 365 logs are retained, for how long, and under which licenses?
6. Who decides whether to notify the bank, insurer, law enforcement, customers, or regulators?
7. How are project teams and job-site staff warned without relying on the compromised channel?
8. What evidence is required before restoring access?

## References

- NIST Cybersecurity Framework 2.0
- [NIST SP 800-61 Rev. 3, *Incident Response Recommendations and Considerations for Cybersecurity Risk Management: A CSF 2.0 Community Profile*](https://csrc.nist.gov/pubs/sp/800/61/r3/final)
- [CIS Critical Security Controls v8.1](https://www.cisecurity.org/controls/v8)

Framework references are used as professional organizing structures; this simulation is not a certification or compliance assessment.
