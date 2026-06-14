# Methodology Prompts for the Signal Check Run Assistant

This file bundles the operating prompts used by the optional Run Assistant. Each prompt maps to run-pack files.

## 1. Product Brief Setup

Purpose: Turn a rough idea into a bounded product brief.

When to use: Start of every run or when the user restarts with a new idea.

Output file: `01-product-brief.lite.md`

Guardrails:

- Do not accept vague target users.
- Ask for problem, segment, trust needs, constraints, and kill criteria.
- Do not claim validation.

Prompt:

Ask one focused question at a time until the idea, segment assumption, problem/job, constraints, current evidence, kill criteria, and Smallest Real Anchor candidate are clear enough to write the product brief.

## 2. Sampling Plan Design

Purpose: Create a segment-first sampling plan with controls.

When to use: After the product brief is specific enough.

Output file: `02-sampling-plan.lite.yaml`

Guardrails:

- Include fitting, adjacent, skeptical, poor-fit, and non-market-control perspectives.
- Avoid fake personas.
- Include likely objections and trust needs.

Prompt:

Design a sampling plan that compares perspectives likely to react differently. Include why each perspective matters and what objection it should surface.

## 3. Stimulus Authoring

Purpose: Create neutral, claim-safe stimuli.

When to use: Before analysis.

Output file: `03-stimuli.lite.yaml`

Guardrails:

- Keep stimuli short.
- Include at least one negative-control stimulus.
- Avoid proof, traction, adoption, or demand claims.

Prompt:

Write concise stimuli that expose message clarity, usefulness, objections, and control failure without leading the response.

## 4. Negative-Control Design

Purpose: Detect over-positive or collapsed reactions.

When to use: Before synthetic reactions.

Output file: `04-negative-controls.lite.yaml`

Guardrails:

- Controls must have expected rejection or indifference.
- Define failure conditions before analysis.
- Stop if controls perform too well.

Prompt:

Create negative controls that should not produce positive reactions. State the expected reaction and the failure condition.

## 5. Prompt Robustness Plan

Purpose: Test whether reactions are stable across framing changes.

When to use: Before or during analysis.

Output file: `05-prompt-robustness-plan.lite.yaml`

Guardrails:

- Include neutral, skeptical, compressed, and control-first variants.
- Treat disappearing objections as a warning.

Prompt:

Create prompt variants that test whether objections and uncertainty survive wording changes.

## 6. Synthetic Directional Reactions

Purpose: Generate free reactions from the defined perspectives.

When to use: During analysis.

Output file: `06-raw-reactions.lite.md`

Guardrails:

- Label all reactions as synthetic and directional.
- Do not write testimonials.
- Preserve unclear points and objections.

Prompt:

For each perspective, respond freely to the stimuli: what is understood, what seems useful, what remains unclear, what speaks against it, and what would need real testing.

## 7. Synthesis

Purpose: Summarize patterns without overclaiming.

When to use: After reactions and controls.

Output file: `07-synthesis.lite.md`

Guardrails:

- Keep objections visible.
- Separate patterns from evidence.
- Include counter-evidence and uncertainty.

Prompt:

Synthesize the run into directional patterns, objections, uncertainties, control results, and a claim-safe next move.

## 8. Bias Audit

Purpose: Check whether the run quality is compromised.

When to use: After synthesis or if the run feels too positive.

Output file: `08-bias-audit.lite.yaml`

Guardrails:

- Check over-positivity, response collapse, weak controls, leading stimuli, and hidden objections.
- Recommend revise, pause, or stop when needed.

Prompt:

Audit the run for signs that the synthetic process produced unreliable or over-smooth output.

## 9. Claim Safety Review

Purpose: Remove unsafe claims before sharing.

When to use: Before any external output or summary.

Output file: `09-claim-safety-review.lite.md`

Guardrails:

- Block demand, validation, representative, testimonial, and purchase-intent language.
- Provide safe replacements.

Prompt:

Review the run for risky claim language and rewrite it into safe directional language.

## 10. Smallest Real Anchor

Purpose: Convert synthetic learning into a real-world test.

When to use: End of every run.

Output file: `10-smallest-real-anchor.lite.md`

Guardrails:

- Must define who, what, where, signal, threshold, kill criteria, and decision time.
- Must be a real test, not another synthetic run.

Prompt:

Translate the run into the smallest real-world test that can create non-synthetic evidence.
