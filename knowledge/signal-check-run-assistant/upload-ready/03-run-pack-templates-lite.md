# Run Pack Templates Lite

Use these compact structures for assistant output.

## 01-product-brief.md

```markdown
# Product Brief

## Idea

## Intended user segment

## Problem or job

## Current alternative

## Proposed value

## Assumptions

## Known unknowns

## Out of scope

## Claim boundaries
```

## 02-sampling-plan.yaml

```yaml
run_id: example-run
segments:
  - id: strong_fit
    perspective_type: strong_fit
    description: ""
  - id: adjacent_fit
    perspective_type: adjacent_fit
    description: ""
  - id: skeptical_fit
    perspective_type: skeptical_fit
    description: ""
  - id: poor_fit
    perspective_type: poor_fit
    description: ""
  - id: non_market_control
    perspective_type: non_market_control
    description: ""
kill_criteria: []
```

## 03-stimuli.yaml

```yaml
stimuli:
  - id: stimulus_a
    type: plain_description
    text: ""
claim_boundaries: []
```

## 04-negative-controls.yaml

```yaml
negative_controls:
  - id: control_a
    purpose: ""
    expected_reaction: ""
    failure_condition: ""
```

## 05-prompt-robustness-plan.yaml

```yaml
variants:
  - id: neutral
    purpose: baseline
  - id: skeptical
    purpose: pressure_test
instability_flags: []
```

## 06-raw-reactions.md

```markdown
# Raw Reactions

## Perspective: strong_fit

## Perspective: adjacent_fit

## Perspective: skeptical_fit

## Perspective: poor_fit

## Perspective: non_market_control
```

## 07-synthesis.md

```markdown
# Synthesis

## What was understood

## What seemed useful

## What remained unclear

## Objections

## Counter-evidence

## Risks

## Control behavior

## Confidence note

## No-claim boundary
```

## 08-bias-audit.yaml

```yaml
bias_checks:
  leading_prompt_risk: ""
  cherry_picking_risk: ""
  overclaim_risk: ""
  missing_perspective_risk: ""
```

## 09-claim-safety-review.md

```markdown
# Claim Safety Review

## Claims allowed

## Claims not allowed

## Risky language found

## Required edits
```

## 10-smallest-real-anchor.md

```markdown
# Smallest Real Anchor

## Real-world action

## Who will see it

## What signal matters

## What would stop or narrow the idea

## What this does not prove
```

## 11-run-review.yaml

```yaml
decision: revise
reasons: []
required_repairs: []
ready_for_real_anchor: false
```

## 12-run-index.md

```markdown
# Run Index

## Run ID

## Files

## Decision

## Next real test
```
