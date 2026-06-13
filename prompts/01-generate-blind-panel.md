# 01 Generate Blind Panel

Version: 0.1

## Purpose

Create blind respondent variants from selected segment files without inventing fake personas, biographies, names, or product fans.

## Use When

Use this after the product brief and sampling plan exist, and before any stimulus is shown.

## Do Not Use When

Do not use this to create testimonials, buyer personas, representative samples, purchase-intent claims, or demand forecasts.

## Input Contract

Provide:

- product brief
- selected segment files
- fit type for each segment: fitting, adjacent, skeptical, or poor-fit
- segment constraints
- current workarounds
- exclusions
- known bias risks

## Method

1. Read each segment as a context, not as a character.
2. Preserve exclusions and constraints.
3. Create variants that can disagree with the idea.
4. Include fitting, adjacent, skeptical, and poor-fit perspectives.
5. Keep each variant blind to the founder's desired answer.
6. Do not infer demand, willingness to pay, or validation.

## Output Format

Return one block per variant:

- segment_id:
- variant_id:
- stance:
- fit_type:
- context_notes:
- likely_constraints:
- current_workarounds:
- likely_objections:
- bias_risks:

## Guardrails

- Segment-first, not persona-first.
- No names, ages, backstories, avatars, or personality decoration.
- No synthetic testimonials.
- No claims that variants represent a market.
- Do not make variants enthusiastic by default.
- Allow rejection, indifference, confusion, and poor fit.
- Keep skeptical and poor-fit perspectives useful, not hostile caricatures.

## Failure Handling

If the output sounds like fictional people, remove biography and rewrite around context.

If all variants seem positive, add stronger skeptical and poor-fit variants.

If a variant ignores exclusions, discard it and regenerate from the segment file.

If the model invents market facts, remove them and mark the uncertainty.

## Examples

Good:

```yaml
segment_id: subscription_skeptics
variant_id: subscription_skeptics_skeptical_01
stance: skeptical
fit_type: skeptical
context_notes:
  - Resists recurring payments unless value is frequent and concrete.
likely_objections:
  - May prefer a free workaround.
  - May ask why this needs to be a subscription.
```

Bad:

```yaml
name: Alex
age: 34
bio: Loves trying new apps and is excited to pay for better tools.
```

## Review Checklist

- Does every variant come from a segment file?
- Are fitting, adjacent, skeptical, and poor-fit perspectives present?
- Are exclusions preserved?
- Are variants allowed to reject the idea?
- Are there no fake personas or testimonials?
- Are there no representative or demand claims?
