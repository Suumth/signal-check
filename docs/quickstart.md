# Quickstart

Signal Check is run by copying files, filling them in, and using the prompts manually. There is no CLI, API, Web UI, engine, or model integration.

Before creating a run folder, choose the right depth.
Use `docs/choose-run-depth.md` to decide whether the question needs a normal chat answer, a Quick Run, a Full Run, or a real-world test.

For smaller questions, use the Quick Run template in `templates/quick-run/`.
For full traceability, use the complete run pack in `templates/run-pack/`.

Optional: use `docs/companion-agent.md` if you want to configure a Custom GPT companion for guided runs. The manual file-based workflow remains the source of truth.

Use `examples/v1-release-candidate/` for small, public-safe teaching examples. Do not treat examples as product evidence.

## 1. Create A Run Folder

For private or internal work, create the run outside the public repository:

```text
../_local-runs/signal-check/my-idea/
```

Fast path: copy `templates/run-pack/` into that folder.

For temporary local work inside a repository clone, use:

```text
_local-runs/my-idea/
```

For public-safe teaching examples, use:

```text
examples/my-public-safe-example/
```

Do not commit private runs. See `docs/run-storage.md`.

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
2. Fill `product-brief.md` in your run folder.
3. Fill `sampling-plan.yaml`.
4. Choose at least four segment files from `panels/general/`: fitting, adjacent, skeptical, and poor-fit.
5. Add or identify a non-market control when false support is a risk.
6. Fill `negative-controls.yaml`.
7. Fill `prompt-robustness-plan.yaml`.
8. Fill `stimuli.yaml` with one or two main stimuli and explicit claim boundaries.
9. Run `prompts/01-generate-blind-panel.md` manually.
10. Run `prompts/02-elicit-neutral-reactions.md` manually and save outputs in `raw-responses.md` before any summary.
11. Run `prompts/03-score-against-anchors.md` manually and save outputs in `scored-results.yaml`.
12. Run `prompts/04-audit-bias.md` manually and save outputs in `bias-audit.yaml`.
13. Run `prompts/05-summarize-without-cherry-picking.md` manually.
14. Apply kill criteria before deciding what to keep.
15. Complete `preflight-report.md`.
16. Run `prompts/06-plan-real-validation.md` manually.
17. Fill `smallest-real-anchor.md`.

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
