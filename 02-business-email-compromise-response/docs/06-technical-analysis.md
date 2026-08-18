# Technical Analysis

## Finding IR-F-01 — Accounts-payable identity and mailbox compromise

**Conclusion:** Confirmed  
**Confidence:** High  
**Affected identity:** `ap.specialist@meridianbuildgroup.example`

An unfamiliar source recorded a successful Entra sign-in at 11:44 UTC. Three minutes later, Exchange audit data record an inbox-rule creation from the same source IP, targeting finance-related subject terms. Subsequent Exchange events share an Exchange session ID and record mailbox access and messages inconsistent with the authorized user’s activity and confirmed fraudulent by Finance and the subcontractor. The Entra correlation ID and Exchange session ID are kept separate because cross-service equality is not assumed.

The evidence supports unauthorized control of the account and mailbox. Geolocation alone is not used as proof; the conclusion depends on correlated authentication, mailbox modification, message activity, user denial, and business verification.

## Finding IR-F-02 — Mailbox-rule interference

**Conclusion:** Confirmed  
**Confidence:** High

The rule `RSS Feeds` moved messages containing `ACH`, `wire`, `bank change`, or `payment approval` to Deleted Items and marked them read. Its generic name is consistent with concealment, but intent is established primarily by the rule conditions and its temporal relationship to the fraud attempt.

No external-forwarding destination is present in the supplied rule event. That does not exclude other collection mechanisms.

## Finding IR-F-03 — Attempted payment diversion

**Conclusion:** Confirmed  
**Confidence:** High

The compromised mailbox sent replacement payment instructions concerning invoice `SCS-8841` and a $184,250 payment. The subcontractor denied requesting the change during an independently initiated callback. QuickBooks and bank evidence are not included, so the project relies on the supplied Finance intake fact that the payment was held before release.

## Finding IR-F-04 — Scope bounded to one identity in supplied evidence

**Conclusion:** Probable, not definitive  
**Confidence:** Moderate

Hunting within the supplied synthetic records found no other user associated with the unfamiliar IP, Exchange session ID, malicious rule name, or fraudulent recipient. This supports a one-account working scope. It does not prove that the tenant, endpoint, mobile device, or external organizations were otherwise unaffected.

## Competing hypotheses

| Hypothesis | Evidence for | Evidence against / missing | Status |
|---|---|---|---|
| User credentials were phished | Unfamiliar successful sign-in followed by mailbox control | No phishing message, landing page, credential telemetry, or user recollection supplied | Possible |
| Adversary-in-the-middle token theft bypassed normal MFA intent | Session access can be consistent with token theft | No token telemetry, Conditional Access detail, or provider risk event supplied | Possible |
| Malicious OAuth application provided access | Cloud mailbox activity could use delegated permissions | No consent, service-principal, or application-permission event supplied | Not supported by supplied evidence |
| Authorized user created the rule and messages | Activity used the user’s mailbox | User denied activity; subcontractor denied request; unfamiliar correlated sign-in | Unlikely |
| Endpoint malware controlled the session | Could explain activity from a legitimate session | No endpoint evidence supplied; source context is unfamiliar | Unknown |

## Explicit unknowns

- Initial access and whether a password was exposed
- MFA method, Conditional Access result detail, token properties, and device compliance
- Content viewed, searched, downloaded, or copied outside recorded events
- Endpoint or mobile-device compromise
- Activity before the available synthetic window
- Whether other recipients acted on fraudulent messages
- Whether legal or contractual notification would be required in a real case
