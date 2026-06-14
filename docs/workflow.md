# Workflow

Signal Check is used manually. There is no CLI, API, Web UI, engine, or model adapter.

This workflow describes a complete manual run.
For small, reversible decisions, a full run may be too heavy. Use `docs/choose-run-depth.md` and `docs/quick-run.md` to choose the appropriate depth.

For a complete ordered run folder, copy `templates/run-pack/` into a private run location outside the public repository. The artifact order below remains the underlying method.

## Artifact Order

Use this order for a complete manual run:

| Step | Input | Output |
| --- | --- | --- |
| Frame | `templates/product-brief.md` | `<run>/product-brief.md` |
| Plan | `templates/sampling-plan.yaml`, `panels/general/` | `<run>/sampling-plan.yaml` |
| Control | `templates/negative-controls.yaml` | `<run>/negative-controls.yaml` |
| Robustness | `templates/prompt-robustness-plan.yaml` | `<run>/prompt-robustness-plan.yaml` |
| Stimuli | `templates/stimuli.yaml`, brief, claim limits | `<run>/stimuli.yaml` |
| Panel | `prompts/01-generate-blind-panel.md` | respondent variants saved in the run folder |
| Reactions | `templates/raw-responses.md`, `prompts/02-elicit-neutral-reactions.md` | `<run>/raw-responses.md` |
| Classification | `templates/scored-results.yaml`, `prompts/03-score-against-anchors.md` | `<run>/scored-results.yaml` |
| Bias audit | `templates/bias-audit.yaml`, `prompts/04-audit-bias.md` | `<run>/bias-audit.yaml` |
| Summary | `prompts/05-summarize-without-cherry-picking.md` | report-ready summary notes |
| Real anchor | `prompts/06-plan-real-validation.md` | `<run>/smallest-real-anchor.md` |
| Report | `templates/preflight-report.md` | `<run>/preflight-report.md` |

When an output has no dedicated template, keep the prompt output in a plain Markdown or YAML file in the run folder. Use `examples/v1-release-candidate/` only as a small public-safe shape reference.

Summary output may be kept as working notes, but the canonical final interpretation artifact is `preflight-report.md` or `10-preflight-report.md`.

## Sequence

1. Copy `templates/product-brief.md` into a private run folder.
2. Fill the brief, including current alternatives, trust needs, reachability, kill criteria, and a candidate Smallest Real Anchor.
3. Copy `templates/sampling-plan.yaml`.
4. Select segment files from `panels/general/`.
5. Include fitting, adjacent, skeptical, poor-fit, and non-market-control perspectives as needed.
6. Add negative controls from `templates/negative-controls.yaml`.
7. Copy or adapt `templates/prompt-robustness-plan.yaml`.
8. Prepare stimuli from `templates/stimuli.yaml` with explicit claim boundaries.
9. Run prompts in numeric order from `prompts/`.
10. Save raw responses in `templates/raw-responses.md` format before interpretation.
11. Classify reactions in `templates/scored-results.yaml` format against anchors with evidence, counter-evidence, and uncertainty.
12. Complete a bias audit using `templates/bias-audit.yaml`.
13. Apply kill criteria.
14. Write a preflight report.
15. Define the Smallest Real Anchor.

Do not reorder the workflow to score first. Open reactions come before classification.

Stop or rerun when:

- negative controls perform as well as the main stimulus
- a non-market control produces false support
- prompt variants change the main finding
- counter-evidence is missing
- the next step remains inside the prompt environment
