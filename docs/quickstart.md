# Quickstart

Signal Check is run by copying files, filling them in, and using the prompts manually. There is no CLI, API, Web UI, engine, or model integration.

Start with `templates/run-pack/` for a complete manual run skeleton. Copy it into `runs/<run-id>/` and fill the files in numeric order. Use individual templates only when extending or repairing a run.

Optional: use `docs/companion-agent.md` if you want to configure a Custom GPT companion for guided runs. The manual file-based workflow remains the source of truth.

Use `examples/v1-release-candidate/` for small, public-safe teaching examples. Do not treat examples as product evidence.

## 1. Create A Run Folder

Create a local folder under `runs/`:

```text
runs/my-idea/
```

Fast path: copy `templates/run-pack/` into `runs/my-idea/`.

For custom repairs or extensions, copy individual files as needed:

- `templates/product-brief.md`
- `templates/sampling-plan.yaml`
- `templates/stimuli.yaml`
- `templates/negative-controls.yaml`
- `templates/prompt-robustness-plan.yaml`
- `templates/raw-responses.md`
- `templates/scored-results.yaml`
- `templates/bias-audit.yaml`
- `templates/preflight-report.md`
- `templates/smallest-real-anchor.md`

Use `examples/v1-release-candidate/` as a shape reference when needed.

## 2. Run The Preflight

1. Read `README.md`.
2. Fill `runs/my-idea/product-brief.md`.
3. Fill `runs/my-idea/sampling-plan.yaml`.
4. Choose at least four segment files from `panels/general/`: fitting, adjacent, skeptical, and poor-fit.
5. Add or identify a non-market control when false support is a risk.
6. Fill `runs/my-idea/negative-controls.yaml`.
7. Fill `runs/my-idea/prompt-robustness-plan.yaml`.
8. Fill `runs/my-idea/stimuli.yaml` with one or two main stimuli and explicit claim boundaries.
9. Run `prompts/01-generate-blind-panel.md` manually.
10. Run `prompts/02-elicit-neutral-reactions.md` manually and save outputs in `raw-responses.md` before any summary.
11. Run `prompts/03-score-against-anchors.md` manually and save outputs in `scored-results.yaml`.
12. Run `prompts/04-audit-bias.md` manually and save outputs in `bias-audit.yaml`.
13. Run `prompts/05-summarize-without-cherry-picking.md` manually.
14. Apply kill criteria before deciding what to keep.
15. Complete `runs/my-idea/preflight-report.md`.
16. Run `prompts/06-plan-real-validation.md` manually.
17. Fill `runs/my-idea/smallest-real-anchor.md`.

## 3. Stop Conditions

Stop, rerun, or narrow the idea when:

- negative controls perform as well as the main stimulus
- a non-market control produces false support
- prompt variants change the main finding
- raw responses are generic or collapsed across segments
- counter-evidence is missing
- kill criteria are met
- the next step is still another prompt run instead of a real-world anchor

Do not report validated purchase intent, representative findings, real user voices, demand prediction, synthetic testimonials, or launch readiness from this process.
