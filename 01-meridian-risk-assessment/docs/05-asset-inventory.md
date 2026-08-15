# Initial Asset Inventory

**Status:** Discovery draft. `TBC` means unknown/to be confirmed. CIA ratings are preliminary business-impact judgments.

This document is the authoritative candidate inventory for the case study. `data/asset-inventory.csv` is a deliberately condensed import-friendly extract, not a complete CMDB or assertion that the listed population is exhaustive.

| ID | Asset / process | Owner | Location | C | I | A | Status / discovery need |
|---|---|---|---|:---:|:---:|:---:|---|
| IAM-01 | Microsoft Entra ID tenant | IT / Management | Microsoft cloud | H | H | H | Roles, licenses, MFA, CA, logs TBC |
| IAM-02 | Privileged, Global Admin, and emergency identities | IT / Management / MSP | Entra/apps | H | H | H | Population and account design TBC |
| IAM-03 | Employee and external identities | Data owners / IT | Entra/apps | H | H | H | Lifecycle and review cadence TBC |
| APP-01 | Microsoft 365 / Exchange / Teams | IT / Business | Microsoft cloud | H | H | H | Configuration and retention TBC |
| APP-02 | SharePoint Online repositories | Data owners / IT | Microsoft cloud | H | H | H | Sites, sensitivity, sharing TBC |
| APP-03 | OneDrive for Business | Users / IT governance | Microsoft cloud | H | H | M | External links and offboarding TBC |
| APP-04 | Procore | Project Operations | Procore cloud | H | H | H | Admins, guests, projects, SSO TBC |
| APP-05 | QuickBooks Enterprise | Finance | Hosting TBC | H | H | H | Architecture, access, backup TBC |
| DATA-01 | Financial/accounting and banking records | Finance | QuickBooks/banks/TBC | H | H | H | Flows and repositories TBC |
| DATA-02 | Contracts, subcontracts, bids, estimates | Management / Operations | M365/Procore/TBC | H | H | H | Classification/retention TBC |
| DATA-03 | Plans, drawings, specifications, RFIs | Project Operations | Procore/M365 | M | H | H | Authoritative repository TBC |
| DATA-04 | Employee and business email data | HR / Business / IT | M365/TBC | H | H | H | Scope and retention TBC |
| DEV-01 | Company Windows laptops | IT / MSP | Office/remote/job sites | H | H | H | Count, EDR, encryption, patching TBC |
| DEV-02 | Finance and executive endpoints | Finance / Executives | Office/remote | H | H | H | Privilege and hardening TBC |
| DEV-03 | Company mobile and BYOD devices | IT / Users | Mobile/job sites | H | H | M | MDM/MAM, enrollment, wipe TBC |
| DEV-04 | Printers and scanners | IT / MSP | Main office | M | M | M | Inventory and segmentation TBC |
| NET-01 | Firewall, internet edge, VPN | IT / MSP | Main office/cloud TBC | H | H | H | Platform, owner, MFA, review TBC |
| NET-02 | Corporate and guest Wi-Fi | IT / MSP | Main office | M | H | H | Isolation and authentication TBC |
| NET-03 | Switching, VLAN, DNS, DHCP | IT / MSP | Main office | M | H | H | Topology/segmentation TBC |
| PROC-01 | ACH and wire payment workflow | Finance / Management | Bank/QB/email | H | H | H | Approval and verification TBC |
| PROC-02 | Vendor onboarding/bank-detail change | Finance / Operations | Email/QB/bank | H | H | M | Callback/source controls TBC |
| PROC-03 | Joiner/mover/leaver lifecycle | HR / Managers / IT / MSP | Multiple | H | H | H | Timeliness and ownership TBC |
| PROC-04 | Incident escalation and response | Management / IT / MSP | Enterprise | H | H | H | Plan, roles, exercise TBC |
| PROC-05 | Backup and recovery | IT / MSP / Owners | TBC | H | H | H | Coverage, isolation, tests TBC |
| TP-01 | MSP privileged dependency | Management | Remote/admin tools TBC | H | H | H | Access, logging, contract TBC |
| TP-02 | Subcontractor/external collaboration | Project Operations | Procore/M365 | H | H | M | Roster, access reviews TBC |
| TP-03 | Microsoft, Procore, Intuit, banks, ISP | Respective owners | Third-party services | H | H | H | Contracts/dependencies TBC |
| GOV-01 | Policies, IR/BCP procedures, insurance | Management | TBC | H | H | M | Existence and approval TBC |

## Preliminary Tier 1 assets

Entra ID and privileged identities; M365/email; QuickBooks and finance data; ACH/wire and vendor-change workflows; Procore/project information; backup/recovery; MSP privileged access; firewall/VPN. Management validation is required.
