# Incident Communications

## Initial executive update — simulated

**Status:** Contained; investigation and monitoring continuing  
**Business impact:** A $184,250 payment-diversion attempt was detected before release. No financial loss is confirmed. One accounts-payable mailbox is confirmed compromised.  
**Actions completed:** Payment held, account disabled, refresh-token revocation initiated, mailbox rule removed, affected subcontractor notified through a trusted channel. Application-session effectiveness remains subject to provider behavior and monitoring.  
**Unknowns:** Initial access, extent of mailbox-content access, and activity outside available logs.  
**Next update:** After tenant-wide hunting and identity recovery validation, or sooner if material scope changes.

## External-recipient notification — simulated template

Meridian Build Group identified unauthorized messages sent from an accounts-payable mailbox on August 12, 2026. Do not use payment instructions or account-change information from the affected email conversation. Please contact your established Meridian Finance representative using previously verified contact information. Meridian will not request confirmation through the affected thread.

## Internal Finance alert — simulated template

Effective immediately, hold all new or changed ACH and wire instructions associated with the affected conversation. Verify payment changes using a previously validated telephone number and the documented dual-approval process. Do not rely on contact details supplied in the change request. Report related messages to the incident lead and do not delete them.

## Communication controls

- Use one incident lead and one approved source of status.
- Separate confirmed facts, current hypotheses, unknowns, and decisions.
- Avoid threat-actor attribution without sufficient evidence.
- Do not state “no data was accessed” when logs cannot establish that fact.
- Coordinate legal, privacy, insurance, law-enforcement, bank, and contractual notices with authorized decision-makers.
- Preserve privileged communications and need-to-know access where directed by counsel.
