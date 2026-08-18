# Architecture and Incident Flow

All entities and flows are simulated.

## Business email compromise path

```mermaid
flowchart LR
    A["Unknown initial-access mechanism"] --> B["AP user session compromised"]
    B --> C["Exchange mailbox accessed"]
    C --> D["Finance-related inbox rule created"]
    C --> E["Subcontractor payment thread reviewed"]
    E --> F["Fraudulent bank-change messages sent"]
    F --> G["Project accountant receives request"]
    G --> H["Independent callback to known vendor number"]
    H --> I["Payment held — no loss"]
    I --> J["Finance escalates to IT/MSP"]
    J --> K["Account disabled and refresh tokens revoked"]
    J --> L["Rule removed and tenant hunted"]
```

## Response decision flow

```mermaid
flowchart TD
    A["Payment-change anomaly reported"] --> B["Hold transaction and preserve evidence"]
    B --> C{"Unauthorized mailbox activity confirmed?"}
    C -- "No" --> D["Continue scoped triage and document disposition"]
    C -- "Yes" --> E["Disable identity and revoke refresh tokens"]
    E --> F["Review MFA, credentials, rules, delegates, apps, and roles"]
    F --> G["Hunt related indicators across tenant"]
    G --> H{"Additional affected entities?"}
    H -- "Yes" --> I["Expand scope and severity"]
    H -- "Not identified" --> J["Controlled recovery and heightened monitoring"]
    I --> G
```

## Key trust boundary

```mermaid
flowchart LR
    U["Finance user"] --> ID["Microsoft Entra ID"]
    ID --> EX["Exchange Online"]
    EX --> V["Subcontractor contact"]
    EX --> P["Internal payment approver"]
    P --> QB["QuickBooks Enterprise workflow"]
    QB --> BK["Bank / ACH portal"]
    MSP["MSP administrators"] --> ID
    MSP --> EX
    CTRL["Independent callback + dual approval"] -. "out-of-band control" .-> P
    CTRL -.-> V
```

The payment-verification control is deliberately outside the email trust path. A compromised mailbox therefore cannot, by itself, authorize a destination change.
