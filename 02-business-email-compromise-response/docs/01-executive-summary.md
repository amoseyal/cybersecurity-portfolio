# Executive Summary

**Organization:** Meridian Build Group, LLC (fictional)  
**Incident:** Suspected accounts-payable business email compromise (simulated)  
**Scenario date:** August 12, 2026  
**Severity:** SEV-2 / High

## What happened

At 9:11 a.m. Eastern Time, a Meridian project accountant received an email from the internal accounts-payable mailbox requesting replacement ACH instructions for a $184,250 subcontractor payment. The accountant used a previously known telephone number—not information in the email—to contact the subcontractor. The subcontractor denied requesting a bank-account change, and Finance immediately placed the payment on hold.

The simulated investigation identified:

- a successful sign-in to the accounts-payable user from an unfamiliar documentation-range IP address and location;
- creation of an Exchange inbox rule named `RSS Feeds` that moved messages containing finance-approval terms to Deleted Items;
- access to an existing subcontractor conversation; and
- two external messages sent from the compromised mailbox containing fraudulent payment instructions.

The account was disabled, refresh-token revocation was initiated, authentication methods were reviewed, the malicious rule was removed, and the affected parties were notified through trusted channels. Application-issued sessions remained subject to provider behavior and monitoring. The payment was not released and no financial loss occurred.

## Business impact

| Impact area | Assessment |
|---|---|
| Financial | Attempted diversion of $184,250; no confirmed loss |
| Operations | Payment delayed pending validation; limited Finance disruption |
| Confidentiality | Mailbox content was accessible to the unauthorized session; exact content viewed or exported is unknown |
| Integrity | Fraudulent messages and a mailbox rule were created |
| Availability | User mailbox temporarily unavailable during containment |
| Legal/privacy | Counsel and privacy review required if real evidence identified regulated or personal information; not determined in this simulation |
| Reputation | Potential trust impact with one subcontractor; contained through direct notification |

## Management conclusions

The out-of-band bank-change verification control prevented loss and should be retained and tested. The incident also demonstrates that payment controls and identity controls must work together: mailbox access alone should not authorize a bank change.

The evidence does not establish the initial credential- or session-theft mechanism, tenant-wide persistence, or data exfiltration. Those remain explicit unknowns rather than negative findings.

## Priority actions

1. Preserve and test independent verification for every new or changed payment destination.
2. Require phishing-resistant MFA for Finance, executives, and privileged administrators where supported.
3. Alert on suspicious inbox rules, external forwarding, unusual sign-ins, and authentication-method changes.
4. Document rapid account disablement, refresh-token revocation, application-session validation, and payment-hold procedures shared by Finance, IT, the MSP, and bank contacts.
5. Verify audit-log retention and conduct a BEC tabletop exercise at least annually.
