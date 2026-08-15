# Conceptual Environment and Trust Relationships

This diagram is a **scenario model**, not an observed network topology. Exact integrations, data flows, authentication paths, and segmentation remain unknown.

```mermaid
flowchart LR
    U["Employees: office, remote, job sites"]
    E["External subcontractors"]
    M["MSP administrators"]
    B["Banks / payment rails"]

    subgraph D["Devices and access"]
      W["Windows endpoints"]
      P["Company mobile / BYOD"]
      V["Office network, Wi-Fi, VPN"]
    end

    subgraph C["Cloud and business services"]
      I["Microsoft Entra ID"]
      O["M365: Exchange, Teams, SharePoint, OneDrive"]
      R["Procore"]
      Q["QuickBooks Enterprise — hosting TBC"]
    end

    U --> W
    U --> P
    W --> V
    P --> I
    V --> I
    I --> O
    I -. "SSO/integration TBC" .-> R
    E --> R
    E --> O
    M --> I
    M --> V
    U --> Q
    Q --> B
    O -. "payment instructions / BEC path" .-> Q
```

## Assessment focus points

- Identity is a shared control plane for corporate and potentially project services.
- Email crosses into the high-integrity vendor-payment process.
- External parties need project access but create lifecycle and sharing risk.
- MSP access may bridge multiple systems and requires separate governance.
- Job-site/BYOD access extends beyond the controlled office boundary.
- QuickBooks hosting and technical dependencies must be discovered before architecture conclusions are drawn.

