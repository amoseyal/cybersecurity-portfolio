# Scenario and Scope

## Scenario statement

This fictional incident is a follow-on case study to Meridian Build Group’s simulated initial risk assessment. It assumes an approximately 85-person construction and development company using Microsoft Entra ID, Microsoft 365, SharePoint/OneDrive, Procore, QuickBooks Enterprise, an MSP, Windows endpoints, mobile/BYOD access, and ACH/wire payment processes.

Meridian uses the reserved domain `meridianbuildgroup.example`; external organizations use `.example` domains. IP addresses use IETF documentation networks. Names are role labels or fictional.

## Objectives

- Determine whether an identity or mailbox was compromised.
- Identify affected identities, messages, rules, applications, and recipients.
- Support Finance in preventing or limiting payment fraud.
- Preserve evidence and distinguish facts from hypotheses.
- Contain access without unnecessarily destroying evidence.
- Define recovery and heightened-monitoring conditions.

## In scope

- Synthetic Entra sign-in events for the affected user and comparison activity
- Synthetic, analyst-normalized Exchange Online and Entra audit events
- Synthetic email trace and incident-intake records
- The affected identity, mailbox, payment conversation, and known external recipient
- Defensive hunting and response recommendations

## Out of scope

- Offensive testing, credential capture, malware detonation, or exploitation
- Real tenant access or validation of Microsoft product behavior
- Forensic imaging of an endpoint or mobile device
- Bank, subcontractor, ISP, or threat-actor infrastructure investigation
- Legal conclusions, breach notification decisions, sanctions screening, or attribution
- Recovery of deleted cloud content beyond the supplied scenario

## Supplied facts versus assumptions

| Type | Item |
|---|---|
| Scenario fact | Finance used an independently sourced callback number and held the payment |
| Scenario fact | Synthetic logs record an unfamiliar successful sign-in and mailbox-rule creation |
| Scenario fact | Two fraudulent external messages appear in the synthetic trace |
| Analytical inference | The unfamiliar session controlled the mailbox when the rule and messages were created |
| Working hypothesis | A phishing or adversary-in-the-middle flow enabled session access |
| Unknown | Whether credentials, a session token, or another mechanism enabled access |
| Unknown | Whether any mailbox content was downloaded or used beyond the observed thread |
| Unknown | Whether activity occurred outside the supplied retention window |
