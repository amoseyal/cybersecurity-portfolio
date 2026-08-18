# Incident Timeline

All events are simulated. UTC is authoritative; Eastern Time is provided for operational readability.

| UTC | Eastern | Event | Source | Assessment |
|---|---|---|---|---|
| Aug 11 12:02 | Aug 11 08:02 | Normal successful user sign-in from South Florida context | EV-01 | Baseline comparison |
| Aug 12 11:42 | Aug 12 07:42 | Unsuccessful sign-in from `203.0.113.77` | EV-01 | Unfamiliar source begins authentication activity |
| Aug 12 11:44 | Aug 12 07:44 | Successful sign-in from same source | EV-01 | Start of confirmed unauthorized session window |
| Aug 12 11:47 | Aug 12 07:47 | Inbox rule `RSS Feeds` created | EV-02 | Rule targets payment-approval terms and moves matches to Deleted Items |
| Aug 12 11:51 | Aug 12 07:51 | Existing subcontractor thread accessed | EV-02 | Reconnaissance or thread review is probable |
| Aug 12 12:16 | Aug 12 08:16 | First fraudulent external message sent | EV-02 / EV-03 | Requests replacement bank instructions |
| Aug 12 12:41 | Aug 12 08:41 | Follow-up message sent externally | EV-02 / EV-03 | Adds urgency before payment cutoff |
| Aug 12 13:11 | Aug 12 09:11 | Internal payment-change message sent to project accountant | EV-03 | Payment diversion reaches internal approval workflow |
| Aug 12 13:19 | Aug 12 09:19 | Accountant completes callback using trusted contact information | EV-04 | Subcontractor denies change; payment held |
| Aug 12 13:24 | Aug 12 09:24 | Finance escalates to IT/MSP and incident lead | EV-04 | Formal response begins |
| Aug 12 13:31 | Aug 12 09:31 | User account disabled | EV-02 | Primary containment |
| Aug 12 13:34 | Aug 12 09:34 | Refresh-token revocation initiated | EV-02 | Blocks reuse of refresh tokens; application-issued session behavior still requires verification |
| Aug 12 13:39 | Aug 12 09:39 | Malicious inbox rule removed | EV-02 | Mailbox persistence/interference removed |
| Aug 12 14:05 | Aug 12 10:05 | Known external recipient notified by trusted channel | EV-04 | Fraudulent instructions repudiated |
| Aug 12 16:20 | Aug 12 12:20 | Initial tenant-wide hunting completed | EV-04 | No additional matching events identified in supplied data |
| Aug 12 20:30 | Aug 12 16:30 | Controlled access restored with new credentials and verified MFA | EV-04 | Recovery begins with heightened monitoring |

## Time-to-action measures

- Fraudulent internal payment message to payment hold: **8 minutes**
- Finance escalation to account disablement: **7 minutes**
- Finance escalation to refresh-token revocation: **10 minutes**
- Finance escalation to malicious-rule removal: **15 minutes**

These values describe the simulated scenario and are not service-level claims.
