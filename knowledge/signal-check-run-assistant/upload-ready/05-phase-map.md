# Four-Phase Run Map

## Phase A — Setup

Goal: define the idea, boundaries, and run question.

Assistant action: ask one focused question at a time until the brief is specific enough.

Output files:

- `01-product-brief.md`
- draft `02-sampling-plan.yaml`

Stop conditions:

- idea too vague
- target segment unclear
- claim boundaries missing

## Phase B — Test Material

Goal: create stimuli, segment plan, negative controls, and robustness variants.

Output files:

- `02-sampling-plan.yaml`
- `03-stimuli.yaml`
- `04-negative-controls.yaml`
- `05-prompt-robustness-plan.yaml`

Stop conditions:

- no negative control
- no skeptical or poor-fit perspective
- stimuli overclaim

## Phase C — Analysis

Goal: elicit free reactions, synthesize cautiously, and audit bias.

Output files:

- `06-raw-reactions.md`
- `07-synthesis.md`
- `08-bias-audit.yaml`
- `09-claim-safety-review.md`

Stop conditions:

- negative-control failure
- response collapse
- cherry-picking risk
- claim-risk language

## Phase D — Output

Goal: produce the real next test and package the run.

Output files:

- `10-smallest-real-anchor.md`
- `11-run-review.yaml`
- `12-run-index.md`

Stop conditions:

- no reachable real-world test
- no kill criteria
- output implies validation
