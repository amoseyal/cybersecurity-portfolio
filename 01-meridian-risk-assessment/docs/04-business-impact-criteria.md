# Business-Impact and CIA Criteria

The preliminary Low/Moderate/High CIA ratings classify **business impact if compromised**, not control strength.

## Overall impact scale

| Rating | Illustrative Meridian consequence |
|---|---|
| 1 — Insignificant | Negligible internal disruption; no sensitive disclosure; routine correction |
| 2 — Minor | Localized disruption under one business day; limited rework; no material contractual effect |
| 3 — Moderate | 1–3 days of material team disruption, meaningful rework or cost, limited sensitive-data exposure, or client/vendor concern |
| 4 — Major | Multi-project or enterprise disruption, significant fraud/loss, regulated or contract-sensitive exposure, major client impact, or recovery lasting several days |
| 5 — Severe | Sustained inability to operate, catastrophic payment fraud, major litigation/contract loss, widespread sensitive exposure, or credible life-safety implications |

Numeric financial thresholds are intentionally **unknown** and must be approved by management; invented dollar bands would create false precision.

## CIA classification

| Dimension | Low | Moderate | High |
|---|---|---|---|
| Confidentiality | Public or low-sensitivity information | Internal operational information with limited harm if disclosed | Financial, personal, contractual, bid, credential, banking, or sensitive project information |
| Integrity | Errors are easily detected and corrected | Incorrect data causes rework, delay, or limited financial effect | Unauthorized change could redirect funds, alter contracts/drawings, affect safety/quality, or undermine financial reporting |
| Availability | Outage is tolerable for several days | Outage materially degrades a team or project for 1–3 days | Loss rapidly disrupts payment, identity, communications, recovery, or active project delivery |

## Impact decision rule

Score the highest credible consequence across financial, operational, legal/contractual, privacy, reputation, and safety dimensions. Document the reasoning and avoid averaging away a severe single-domain consequence. Management validates final ratings and recovery tolerances.

