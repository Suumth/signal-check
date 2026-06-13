# 04 Audit Bias

Version: 0.1

## Purpose

Audit the run for bias before any summary or next-step recommendation is written.

## Use When

Use this after raw reactions and anchor classifications exist, and before summarizing.

## Do Not Use When

Do not use this as a cosmetic checklist after the conclusion is already decided.

## Input Contract

Provide:

- product brief
- selected segments
- prompts used
- prompt variants, if any
- stimuli
- negative controls
- raw responses
- classified results
- kill criteria

## Method

1. Check whether prompts were leading.
2. Check whether selected segments were too favorable.
3. Check whether skeptical and poor-fit perspectives were included.
4. Check whether negative controls received suspiciously positive reactions.
5. Check for prompt sensitivity across variants.
6. Check for response collapse: repeated generic reactions that erase segment differences.
7. Check for cherry-picking and missing counter-evidence.
8. Return mitigations before any summary.

## Output Format

Return:

- prompt_bias:
- segment_bias:
- over_positivity_risk:
- negative_control_failure:
- prompt_sensitivity:
- response_collapse:
- cherry_picking_risk:
- missing_counter_evidence:
- mitigations:
- confidence_after_audit:

## Guardrails

- Bias audit can weaken or stop the run.
- Positive reactions are not evidence until negative controls are checked.
- Poor-fit reactions should not be converted into support.
- Do not smooth contradictions.
- Do not claim representative findings.
- Do not turn raw reactions into testimonials.

## Failure Handling

If negative controls perform too well, mark the run as low confidence.

If all segments sound the same, flag response collapse and rerun with stronger segment context.

If prompt variants produce different results, mark prompt sensitivity and do not summarize as stable signal.

If skeptical perspectives are missing, stop and add them before summary.

## Examples

Good:

```yaml
negative_control_failure: true
mitigation: "Rerun neutral reactions with a less polished control and stronger poor-fit segment context."
confidence_after_audit: low
```

Bad:

```yaml
bias_audit: passed
summary: "The product is ready."
```

## Review Checklist

- Were leading prompts checked?
- Were skeptical and poor-fit segments present?
- Were negative controls evaluated?
- Was prompt sensitivity considered?
- Was response collapse considered?
- Were mitigations returned before summary?
