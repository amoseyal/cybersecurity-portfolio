# Containment, Eradication, and Recovery

## Action sequence

| Priority | Action | Purpose | Validation |
|---|---|---|---|
| Immediate | Hold affected and pending payment changes | Prevent financial loss | Finance confirms hold with bank/payment platform |
| Immediate | Preserve relevant audit, sign-in, trace, mailbox, endpoint, and payment records | Maintain investigative record | Collection log completed; retention window documented |
| Immediate | Disable affected account | Stop new interactive access | Sign-in blocked and recorded |
| Immediate | Revoke refresh tokens and reset Entra sign-in sessions | Prevent new token issuance from the revoked session state | Revocation event recorded; application access and new activity checked separately |
| Immediate | Review and reset authentication methods and credentials | Remove compromised factors/secrets | User re-enrolled through verified process |
| Immediate | Remove malicious inbox rules and forwarding | Restore mailbox integrity | Rules exported, reviewed, and clean state confirmed |
| Same day | Search tenant for matching IP, rule, recipient, domains, subjects, and session identifiers | Identify related scope | Search parameters and results retained |
| Same day | Notify subcontractor and internal recipients via trusted channels | Repudiate fraudulent instructions | Recipient acknowledges warning |
| Same day | Review privileged roles, app consents, delegates, transport rules, and authentication changes | Find alternate persistence | No unexplained changes or unresolved exceptions |
| Recovery | Restore controlled user access | Resume business operation | Known-clean device, new password, verified MFA, manager approval |
| Recovery | Monitor identity and mailbox for at least 14 days | Detect recurrence | Daily review owner and alert routes documented |

## Important sequencing considerations

- Evidence preservation should begin immediately, but an imminent fraudulent payment justifies rapid containment.
- Password reset alone is insufficient; refresh tokens, application-issued sessions, authentication methods, application permissions, delegates, and mailbox rules require review. Application sessions may not end immediately and must be validated according to the relying application's behavior.
- Deleting a rule before recording its configuration destroys useful context. Export or capture it first when doing so does not materially increase risk.
- Do not use the suspected mailbox to notify affected external parties.
- Do not trust phone numbers or bank details contained in the suspicious conversation.

## Recovery gates

Access should be restored only after identity verification, credential and MFA reset, refresh-token revocation, application-session review, mailbox configuration review, endpoint risk review, and confirmation that Finance has isolated affected payments. A real organization should define who can accept residual risk when a gate cannot be completed.
