# Methodology Prompts

## Product brief prompt

Purpose: turn an idea into a clear preflight brief.

Use when: starting a run.

Output file: `01-product-brief.md`.

Guardrails: do not invent traction, customers, research, or demand.

## Sampling plan prompt

Purpose: select segments and perspectives.

Use when: the brief is specific enough to test.

Output file: `02-sampling-plan.yaml`.

Guardrails: include skeptical, poor-fit, and non-market-control perspectives.

## Stimuli prompt

Purpose: create messages or product descriptions to react to.

Use when: the run needs test material.

Output file: `03-stimuli.yaml`.

Guardrails: keep stimuli plain and non-hype.

## Negative controls prompt

Purpose: design controls that should not perform well.

Use when: before eliciting reactions.

Output file: `04-negative-controls.yaml`.

Guardrails: strong positive reaction to a control is a stop condition.

## Reactions prompt

Purpose: elicit free reactions from perspectives.

Use when: the panel and stimuli are ready.

Output file: `06-raw-reactions.md`.

Guardrails: reactions are synthetic perspective outputs, not real user data.

## Synthesis prompt

Purpose: summarize signals, objections, risks, uncertainty, and next steps.

Use when: reactions exist.

Output file: `07-synthesis.md`.

Guardrails: no cherry-picking, no demand claims, no representative claims.

## Smallest Real Anchor prompt

Purpose: translate the run into a real-world test.

Use when: ending the run.

Output file: `10-smallest-real-anchor.md`.

Guardrails: the anchor must involve real contact, real behavior, or real artifact exposure.
