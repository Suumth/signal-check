# Workflow

Signal Check is used manually. There is no CLI, API, Web UI, engine, or model adapter in v0.1.

## Artifact Order

Use this order for a complete manual run:

| Step | Input | Output |
| --- | --- | --- |
| Frame | `templates/product-brief.md` | `runs/<run>/product-brief.md` |
| Plan | `templates/sampling-plan.yaml`, `panels/general/` | `runs/<run>/sampling-plan.yaml` |
| Control | `templates/negative-controls.yaml` | `runs/<run>/negative-controls.yaml` |
| Robustness | `templates/prompt-robustness-plan.yaml` | `runs/<run>/prompt-robustness-plan.yaml` |
| Stimuli | `templates/stimuli.yaml`, brief, claim limits | `runs/<run>/stimuli.yaml` |
| Panel | `prompts/01-generate-blind-panel.md` | respondent variants saved in the run folder |
| Reactions | `templates/raw-responses.md`, `prompts/02-elicit-neutral-reactions.md` | `runs/<run>/raw-responses.md` |
| Classification | `templates/scored-results.yaml`, `prompts/03-score-against-anchors.md` | `runs/<run>/scored-results.yaml` |
| Bias audit | `templates/bias-audit.yaml`, `prompts/04-audit-bias.md` | `runs/<run>/bias-audit.yaml` |
| Summary | `prompts/05-summarize-without-cherry-picking.md` | report-ready summary notes |
| Real anchor | `prompts/06-plan-real-validation.md` | `runs/<run>/smallest-real-anchor.md` |
| Report | `templates/preflight-report.md` | `runs/<run>/preflight-report.md` |

When an output has no dedicated template, keep the prompt output in a plain Markdown or YAML file in the run folder. Use `examples/searcue/` only as a completed shape reference.

## Sequence

1. Copy `templates/product-brief.md` into a new folder under `runs/`.
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
