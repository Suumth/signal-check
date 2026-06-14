# Signal Check Run Pack

This folder is a copyable manual run structure for a complete Product Preflight.

A Run Pack is not a CLI, engine, model integration, API, Web UI, or automated analysis system. It is an ordered set of Markdown and YAML files that helps you keep a run traceable from context to real-world follow-up.

## How To Use It

1. Copy the entire `templates/run-pack/` folder into `runs/<run-id>/`.
2. Rename the copied folder if needed so the path is `runs/<run-id>/`.
3. Fill the files in numeric order.
4. Keep raw prompt outputs short, relevant, and separated from interpretation.
5. End the run with `11-smallest-real-anchor.md`.

Do not copy confidential product plans, customer records, private research notes, credentials, or large internal data dumps into a public repository run. If a run uses sensitive context, minimize it, sanitize it, or keep the run outside the public repo.

## File Order

| Step | File | Purpose |
| --- | --- | --- |
| 00 | `00-run-context.md` | Name the run, decision, data classification, and method limits. |
| 01 | `01-product-brief.md` | Frame the product idea as a bounded hypothesis. |
| 02 | `02-sampling-plan.yaml` | Plan segment-first coverage and controls. |
| 03 | `03-selected-segments.yaml` | Record the exact fitting, adjacent, skeptical, poor-fit, and non-market-control segments used. |
| 04 | `04-stimuli.yaml` | Prepare neutral stimuli and claim limits. |
| 05 | `05-negative-controls.yaml` | Add controls that can expose false support. |
| 06 | `06-prompt-robustness-plan.yaml` | Plan wording and context variants before interpreting outputs. |
| 07 | `07-raw-responses.md` | Archive short raw outputs before summarizing. |
| 08 | `08-scored-results.yaml` | Classify reactions against anchors with evidence, counter-evidence, uncertainty, and confidence notes. |
| 09 | `09-bias-audit.yaml` | Audit over-positivity, control failures, prompt sensitivity, and cherry-picking risk. |
| 10 | `10-preflight-report.md` | Summarize bounded findings and claims not allowed. |
| 11 | `11-smallest-real-anchor.md` | Define the smallest real-world action worth running next. |

## Method Boundaries

Signal Check outputs are hypotheses, not validation. Do not use a run to claim validated purchase intent, representative findings, real user voices, demand prediction, synthetic testimonials, launch readiness, or that AI replaces user research.

The final artifact should make the next real-world action clearer, not make the idea look proven.
