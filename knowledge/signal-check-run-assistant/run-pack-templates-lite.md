# Run Pack Templates Lite

Use these templates for Custom GPT file output. Each section maps to one run-pack file.

## 01-product-brief.lite.md

````markdown
# 01 Product Brief

## Run ID

`<run-id>`

## Idea

`<one-sentence product idea>`

## Target assumption

`<who this might help and why>`

## Problem or job

`<problem, job, or context>`

## Current evidence

- `<known fact or observation>`
- `<unknown or assumption>`

## Constraints

- `<time, channel, budget, access, platform, or trust constraint>`

## Trust needs

- `<what the segment would need to believe before engaging>`

## Kill criteria

- `<condition that would make the idea unsafe to continue without revision>`

## Smallest Real Anchor candidate

`<first real-world test idea>`

## Claim boundary

This brief does not validate demand, prove purchase intent, or represent real users.
````

## 02-sampling-plan.lite.yaml

````yaml
run_id: "<run-id>"
primary_assumption: "<assumption being examined>"
perspectives:
  - id: "fit-1"
    type: "fitting"
    segment: "<segment name>"
    problem_or_job: "<problem/job>"
    likely_objections:
      - "<objection>"
    trust_needs:
      - "<trust need>"
    reachability: "<how this segment could be reached for a real test>"
  - id: "adjacent-1"
    type: "adjacent"
    segment: "<segment name>"
    problem_or_job: "<problem/job>"
    likely_objections:
      - "<objection>"
    trust_needs:
      - "<trust need>"
    reachability: "<reachability>"
  - id: "skeptical-1"
    type: "skeptical"
    segment: "<segment name>"
    problem_or_job: "<problem/job>"
    likely_objections:
      - "<objection>"
    trust_needs:
      - "<trust need>"
    reachability: "<reachability>"
  - id: "poor-fit-1"
    type: "poor_fit"
    segment: "<segment name>"
    problem_or_job: "<why poor fit matters>"
    likely_objections:
      - "<objection>"
    trust_needs:
      - "<trust need>"
    reachability: "<reachability>"
  - id: "control-1"
    type: "non_market_control"
    segment: "<non-market or irrelevant perspective>"
    problem_or_job: "<why this should not react positively>"
    likely_objections:
      - "<expected rejection>"
    trust_needs:
      - "not applicable"
    reachability: "not a target segment"
notes: "Synthetic perspectives are directional only and do not represent real users."
````

## 03-stimuli.lite.yaml

````yaml
run_id: "<run-id>"
stimuli:
  - id: "stimulus-a"
    type: "plain_description"
    title: "<title>"
    text: "<short neutral concept description>"
    intended_question: "<what this stimulus should reveal>"
    claim_risk: "low"
  - id: "stimulus-b"
    type: "message_variant"
    title: "<title>"
    text: "<message variant>"
    intended_question: "<what this tests>"
    claim_risk: "medium"
  - id: "stimulus-control"
    type: "negative_control"
    title: "<control title>"
    text: "<deliberately unsuitable or overclaiming variant>"
    intended_question: "<what over-positive reaction this should catch>"
    claim_risk: "high"
forbidden_claims:
  - "validated demand"
  - "representative finding"
  - "purchase intent proof"
  - "real user testimonial"
````

## 04-negative-controls.lite.yaml

````yaml
run_id: "<run-id>"
negative_controls:
  - id: "control-segment"
    control_type: "non_market_segment"
    description: "<segment that should not find the idea relevant>"
    expected_reaction: "<expected rejection or confusion>"
    failure_condition: "<what would indicate response collapse>"
  - id: "control-message"
    control_type: "overclaiming_message"
    description: "<message that overstates the idea>"
    expected_reaction: "<expected skepticism>"
    failure_condition: "<too-positive reaction or no objection>"
  - id: "control-feature"
    control_type: "irrelevant_feature"
    description: "<feature or benefit that should not matter>"
    expected_reaction: "<expected indifference>"
    failure_condition: "<positive reaction without reason>"
stop_rule: "If a negative control performs too well, pause synthesis and run a bias audit."
````

## 05-prompt-robustness-plan.lite.yaml

````yaml
run_id: "<run-id>"
robustness_checks:
  - id: "neutral-wording"
    purpose: "Test whether neutral wording changes the reaction."
    prompt_variant: "<neutral variant>"
  - id: "skeptical-wording"
    purpose: "Test whether objections survive a skeptical frame."
    prompt_variant: "<skeptical variant>"
  - id: "control-first"
    purpose: "Test whether negative controls still fail when shown early."
    prompt_variant: "<control-first variant>"
  - id: "compressed"
    purpose: "Test whether the same pattern survives a shorter stimulus."
    prompt_variant: "<compressed variant>"
pass_condition: "Core objections and uncertainties remain visible across variants."
fail_condition: "Responses become generic, over-positive, or lose objections."
````

## 06-raw-reactions.lite.md

````markdown
# 06 Raw Reactions

These are synthetic directional reactions. They are not real user responses, testimonials, survey results, or market evidence.

## Run ID

`<run-id>`

## Stimulus coverage

- `<stimulus id>`
- `<stimulus id>`

## Perspective reactions

### `<perspective id>` — `<perspective type>`

Understood:

- `<what is understood>`

Useful:

- `<what seems useful, if anything>`

Unclear:

- `<what is unclear>`

Objections:

- `<objection>`

Would need to see:

- `<real proof, artifact, or test condition>`

## Negative-control observations

- `<control id>`: `<reaction and whether it behaved as expected>`

## Notes

Do not quote these reactions as real user feedback.
````

## 07-synthesis.lite.md

````markdown
# 07 Synthesis

## Run ID

`<run-id>`

## Directional patterns

- `<pattern observed across synthetic reactions>`

## Strongest objections

- `<objection>`

## Counter-evidence and uncertainty

- `<counter-signal or unresolved uncertainty>`

## Negative-control result

`<passed, warning, or failed>`

Explanation:

- `<what happened and why it matters>`

## Claim-safe interpretation

This run suggests questions and risks to test. It does not validate demand, prove purchase intent, or produce representative findings.

## Recommended next move

- `<continue, revise, narrow, pause, or stop>`

## Inputs needed for Smallest Real Anchor

- `<who>`
- `<what>`
- `<where>`
- `<signal>`
- `<threshold>`
````

## 08-bias-audit.lite.yaml

````yaml
run_id: "<run-id>"
checks:
  over_positive_reactions:
    status: "<clear|warning|fail>"
    evidence:
      - "<observation>"
  response_collapse:
    status: "<clear|warning|fail>"
    evidence:
      - "<observation>"
  weak_negative_controls:
    status: "<clear|warning|fail>"
    evidence:
      - "<observation>"
  leading_stimuli:
    status: "<clear|warning|fail>"
    evidence:
      - "<observation>"
  hidden_objections:
    status: "<clear|warning|fail>"
    evidence:
      - "<observation>"
required_action: "<continue|revise_stimuli|rerun_controls|pause|stop>"
notes: "Bias audit checks run quality, not product quality."
````

## 09-claim-safety-review.lite.md

````markdown
# 09 Claim Safety Review

## Run ID

`<run-id>`

## Safe claims

- `<claim that can be made safely>`

## Unsafe claims to avoid

- `<claim to avoid>`

## Risky phrases found

- `<phrase>` — `<why risky>` — `<safe replacement>`

## Boundary statement

This run used synthetic directional reactions to identify assumptions, objections, and next tests. It does not validate demand, prove purchase intent, produce representative findings, or replace real user research.

## External-sharing status

`<ready|revise|block>`

Reason:

- `<reason>`
````

## 10-smallest-real-anchor.lite.md

````markdown
# 10 Smallest Real Anchor

## Run ID

`<run-id>`

## Real test question

`<what must be learned from the real world>`

## Who

`<reachable real people or organizations>`

## What they will see or do

`<artifact, message, landing page, call, prototype, offer, or task>`

## Where

`<channel or context>`

## Observable signal

`<behavior, reply, booking, signup, payment, meeting, refusal, or other observable action>`

## Threshold

`<minimum signal that justifies continue or revise>`

## Kill criteria

- `<condition that stops or narrows the idea>`

## Time box

`<duration or decision date>`

## Decision rule

- Continue if `<condition>`
- Revise if `<condition>`
- Stop if `<condition>`

## Claim boundary

The result of this test may create real evidence, but this synthetic run itself did not.
````

## 11-run-review.lite.yaml

````yaml
run_id: "<run-id>"
review_status: "<ready|revise|block>"
checks:
  brief_specific_enough: "<yes|no|partial>"
  segment_first: "<yes|no|partial>"
  skeptical_perspectives_included: "<yes|no|partial>"
  poor_fit_included: "<yes|no|partial>"
  non_market_control_included: "<yes|no|partial>"
  negative_controls_reviewed: "<yes|no|partial>"
  kill_criteria_defined: "<yes|no|partial>"
  objections_preserved: "<yes|no|partial>"
  claim_safe: "<yes|no|partial>"
  smallest_real_anchor_defined: "<yes|no|partial>"
blockers:
  - "<blocker or none>"
recommended_next_action: "<continue|revise|pause|stop>"
notes: "The review assesses run quality, not product quality."
````

## 12-run-index.lite.md

````markdown
# 12 Run Index

## Run ID

`<run-id>`

## Idea

`<short idea>`

## Status

`<draft|in_progress|ready_for_real_test|paused|stopped>`

## Files

- `01-product-brief.lite.md`
- `02-sampling-plan.lite.yaml`
- `03-stimuli.lite.yaml`
- `04-negative-controls.lite.yaml`
- `05-prompt-robustness-plan.lite.yaml`
- `06-raw-reactions.lite.md`
- `07-synthesis.lite.md`
- `08-bias-audit.lite.yaml`
- `09-claim-safety-review.lite.md`
- `10-smallest-real-anchor.lite.md`
- `11-run-review.lite.yaml`
- `12-run-index.lite.md`

## Phase summaries

### Phase A — Setup

`<summary>`

### Phase B — Test Material

`<summary>`

### Phase C — Analysis

`<summary>`

### Phase D — Output

`<summary>`

## Final decision

`<continue|revise|pause|stop>`

## Next real test

`<Smallest Real Anchor summary>`
````
