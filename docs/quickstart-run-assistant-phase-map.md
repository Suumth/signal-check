# Run Assistant Phase Map

This phase map is for the optional Signal Check Run Assistant. It can also guide manual runs.

## Phase A — Setup

Goal: define the idea, assumption, scope, constraints, and initial kill criteria.

Inputs:

- product idea
- target user or segment guess
- problem or job
- current evidence level
- constraints

Outputs:

- `01-product-brief.lite.md`
- `12-run-index.lite.md`

Stop conditions:

- the idea is too vague to segment
- the user asks for proof or validation
- the proposed input contains private or confidential data
- no plausible real-world next test can exist

## Phase B — Test Material

Goal: create the sampling plan, stimuli, negative controls, and prompt-robustness plan.

Inputs:

- product brief
- segment assumptions
- message or concept variants
- known objections

Outputs:

- `02-sampling-plan.lite.yaml`
- `03-stimuli.lite.yaml`
- `04-negative-controls.lite.yaml`
- `05-prompt-robustness-plan.lite.yaml`

Stop conditions:

- no skeptical or poor-fit perspective is included
- no non-market control is included
- stimuli imply unearned proof or adoption
- negative controls are too weak to catch over-positive reactions

## Phase C — Analysis

Goal: produce directional synthetic reactions, synthesize risks, audit bias, and check claim safety.

Inputs:

- sampling plan
- stimuli
- negative controls
- prompt-robustness plan

Outputs:

- `06-raw-reactions.lite.md`
- `07-synthesis.lite.md`
- `08-bias-audit.lite.yaml`
- `09-claim-safety-review.lite.md`

Stop conditions:

- negative controls perform too well
- responses collapse into generic agreement
- objections disappear in synthesis
- output language implies demand validation
- no counter-evidence is preserved

## Phase D — Output

Goal: translate the run into a real next test.

Inputs:

- synthesis
- bias audit
- claim-safety review
- kill criteria

Outputs:

- `10-smallest-real-anchor.lite.md`
- `11-run-review.lite.yaml`
- `12-run-index.lite.md`

Stop conditions:

- the next step is not real-world observable
- the test has no threshold
- the decision rule is vague
- the output claims more than the run can support

## Phase summaries

At the end of every phase, write a compact summary that can be pasted into a new session.
