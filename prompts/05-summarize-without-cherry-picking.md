# 05 Summarize Without Cherry-Picking

Version: 0.1

## Purpose

Summarize the Product Preflight without turning it into a verdict or hiding contradictory evidence.

## Use When

Use this only after raw reactions, anchor classifications, negative-control readout, and bias audit are complete.

## Do Not Use When

Do not use this to write marketing copy, testimonials, launch claims, demand predictions, or a final go/no-go verdict.

## Input Contract

Provide:

- product brief
- selected segments
- raw responses
- classified results
- bias audit
- negative-control readout
- kill criteria
- known prompt sensitivity

## Method

1. Start with what can and cannot be concluded.
2. Summarize strongest evidence for continuing.
3. Summarize strongest evidence against continuing.
4. Preserve minority and counter-patterns.
5. Compare fitting, adjacent, skeptical, and poor-fit segment reactions.
6. Include negative-control readout.
7. Include prompt-sensitivity caveats.
8. Name what should change in the product brief.
9. Name what must not be claimed.

## Output Format

Return:

- summary:
- evidence_for_continuing:
- evidence_against_continuing:
- minority_or_counter_patterns:
- segment_differences:
- negative_control_readout:
- prompt_sensitivity_notes:
- remaining_uncertainty:
- product_brief_changes:
- forbidden_claims:
- recommended_next_step:

## Guardrails

- Do not write synthetic testimonials.
- Do not call reactions real user voices.
- Do not claim validated purchase intent.
- Do not claim representative findings.
- Do not predict demand.
- Do not hide contradictions.
- Keep results framed as hypotheses and planning inputs.
- Summary must point toward a real next test.

## Failure Handling

If evidence is mostly positive but negative controls also performed well, lead with low confidence.

If minority objections affect the riskiest assumption, treat them as material.

If segment differences are weak, say so instead of inventing a pattern.

If the summary reads like sales copy, rewrite it as evidence, caveat, and uncertainty.

## Examples

Good:

> The strongest continuing evidence is clearer comprehension among fitting segments. The strongest counter-evidence is that skeptical segments see the idea as redundant with current workarounds. This should be treated as a hypothesis for a real follow-up test, not validation.

Bad:

> Users love this idea, and the market is ready.

## Review Checklist

- Are positive and negative evidence both present?
- Are minority and counter-patterns visible?
- Is the negative-control readout included?
- Is prompt sensitivity included when relevant?
- Are forbidden claims listed?
- Does the summary avoid testimonials and real-user language?
- Does it lead to a real next test?
