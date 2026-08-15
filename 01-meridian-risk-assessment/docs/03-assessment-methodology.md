# Assessment Methodology

## Approach

1. **Establish context:** confirm objectives, scope, business model, threat context, and decision owners.
2. **Identify assets:** include identities, information, applications, devices, infrastructure, business processes, and dependencies.
3. **Classify impact:** apply the CIA/business-impact criteria and validate criticality with management.
4. **Collect evidence:** interviews alone are not sufficient for control-effectiveness conclusions; obtain configuration, procedural, and operating evidence.
5. **Develop and test risk hypotheses:** connect asset, threat event, precondition/control gap, and business consequence.
6. **Score inherent risk:** likelihood × impact before proposed additional controls.
7. **Evaluate controls:** assess design and, when evidence permits, operating effectiveness. Record contradictory evidence.
8. **Estimate residual risk:** only after control effectiveness is supported; otherwise record `Not assessed`.
9. **Report and remediate:** assign ownership, sequence actions, define measurable closure criteria, and capture accepted risks.

## Finding disposition gates

In a real engagement, a risk hypothesis advances through `Open discovery → Draft finding → Management validation → Final finding → Remediation validation → Closed / Risk accepted`. A draft finding requires attributable evidence and a reproducible condition. Management receives a factual-accuracy review but does not unilaterally remove supported findings. Closure requires evidence that the condition changed; a plan or purchase order alone is insufficient.

## Evidence model

| Status | Meaning |
|---|---|
| Scenario fact | Explicitly supplied by the fictional case description |
| Assumption | Used to bound analysis and clearly labeled |
| Unknown | Requires discovery; no conclusion is drawn |
| Simulated condition | Hypothetical fact used to demonstrate a finding |
| Observed evidence | Would require actual inspection; none exists in this project |

Evidence strength would be ranked: configuration/export or direct observation; tested procedure/sample; approved document; corroborated interview; uncorroborated statement. A finding cannot be presented as observed when it rests only on a simulated condition.

## Framework use

NIST CSF 2.0 provides outcome language across Govern, Identify, Protect, Detect, Respond, and Recover. CIS Controls v8 provides prioritized safeguard families. Mappings are selective aids for remediation design, not claims of complete coverage or compliance.

## Quality controls

- Unique asset, finding, risk, and evidence-request IDs
- Traceability from finding to risk register, recommendation, owner, and validation test
- Explicit inherent versus residual risk
- Management validation of impact and risk acceptance
- Findings include condition, criteria, cause, risk, recommendation, and evidence needed
- Dates, versions, samples, and exceptions retained in working papers during a real engagement
