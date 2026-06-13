# 06 Plan Real Validation

Version: 0.1

## Purpose

Turn the preflight into a Smallest Real Anchor: the smallest real-world action that can reduce uncertainty.

## Use When

Use this at the end of every Product Preflight.

## Do Not Use When

Do not use this to declare validation, replace real research, or avoid contact with real people.

## Input Contract

Provide:

- preflight summary
- riskiest assumption
- target segment
- evidence for continuing
- evidence against continuing
- negative-control readout
- bias audit
- kill criteria
- constraints such as time, budget, or access

## Method

1. Identify the riskiest remaining assumption.
2. Choose the smallest real-world action that can test it.
3. Prefer direct contact or observable behavior over another synthetic pass.
4. Define success evidence and stop evidence before running the test.
5. Keep the action small enough to complete quickly.
6. Name materials needed and decision owner.
7. State what the preflight does not prove.

## Output Format

Return:

- smallest_real_anchor:
- target_segment:
- concrete_action:
- real_world_channel:
- materials_needed:
- success_evidence:
- stop_evidence:
- time_box:
- decision_owner:
- what_this_will_not_prove:

## Guardrails

- The action must involve the world outside the prompt.
- Acceptable anchors include real conversations, beta replies, waitlist or landing-page tests, concierge tests, or observation of current workarounds.
- Do not claim purchase intent has been measured.
- Do not claim the idea is validated.
- Do not create synthetic testimonials.
- If no real-world action is possible, say that the run cannot reduce uncertainty further.

## Failure Handling

If the plan is another prompt run, reject it and propose a real-world anchor.

If the plan is too large, shrink it to the smallest useful action.

If success evidence is vague, rewrite it as observable behavior or a concrete response.

If stop evidence is missing, do not finalize the plan.

## Examples

Good:

```yaml
smallest_real_anchor: "Ask five people in the fitting segment to compare two descriptions and describe their current workaround."
real_world_channel: "Direct messages or scheduled calls"
success_evidence: "At least three can name a current workaround and a specific moment where the idea might help."
stop_evidence: "Most say the current workaround is enough or the problem is not worth changing behavior."
```

Bad:

```yaml
smallest_real_anchor: "Run another synthetic panel and ask if users would buy."
```

## Review Checklist

- Does the plan leave the prompt environment?
- Is the target segment specific?
- Is success evidence observable?
- Is stop evidence present?
- Is the test small enough to run soon?
- Does it avoid validation and purchase-intent claims?
- Does it state what the test will not prove?
