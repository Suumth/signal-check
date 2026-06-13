# Signal Check

Signal Check is a file-based open-source method kit for running a Product Preflight on product ideas before building them.

It helps a founder, maker, product lead, or researcher test the shape of an idea against carefully chosen audience segments, neutral prompts, negative controls, and explicit kill criteria. The output is not a verdict. It is a structured way to notice weak signal, strong caveats, and the smallest real-world action worth taking next.

v0.1 is intentionally not software that runs. It is a Synthetic Panel Kit made from Markdown, YAML, JSON Schemas, prompts, templates, panels, and example artifacts.

## What It Is

Signal Check is a thinking tool for early product ideas. It supports a manual workflow:

1. Write a compact product brief.
2. Select segment-first panels: fitting, adjacent, skeptical, and poor-fit perspectives.
3. Prepare neutral stimuli and negative controls.
4. Elicit free reactions before any structured scoring.
5. Check prompt robustness before trusting a pattern.
6. Classify reactions against explicit anchors with evidence and uncertainty.
7. Apply kill criteria.
8. End the Product Preflight with a Smallest Real Anchor.

## What v0.1 Contains

Signal Check v0.1 is a file kit:

- `docs/` explains the method, claims, workflow, bias controls, scoring limits, and glossary.
- `schemas/` defines artifact shapes for briefs, segments, stimuli, responses, classified results, audits, and reports.
- `panels/` contains reusable segment files.
- `templates/` contains copyable run materials.
- `prompts/` contains the manual prompt sequence.
- `examples/searcue/` shows a complete example Product Preflight.
- `runs/` is where you can keep local run artifacts.
- `reports/` is where shareable summaries can go.

Signal Check v0.1 does not contain:

- CLI
- API
- Web UI
- model integration
- automatic analysis engine
- automated scoring or grading engine

## What It Is Not

Signal Check is not a market research replacement, not an AI oracle, not a fake-persona generator, and not a system for proving demand. It does not claim validated purchase intent, representative findings, real user voices, demand prediction, or that AI replaces user research.

It is deliberately narrow: it helps you think better before you spend real build time.

## Who It Is For

Use Signal Check when you have an early product, feature, app, utility, or service idea and need a disciplined preflight before committing to design, code, or marketing.

It is best for:

- solo builders and small teams
- product managers shaping an early concept
- researchers preparing a real study
- open-source maintainers testing positioning
- AI-assisted builders who need stronger decision hygiene

It is not enough when you need pricing validation, statistically defensible research, usability evidence, legal review, safety review, or launch confidence.

## How A Manual Product Preflight Works

Start with `templates/product-brief.md`. Keep the brief short and concrete. Then choose panels from `panels/general/` and copy `templates/sampling-plan.yaml`.

For each run:

- include at least one fitting segment
- include at least one adjacent segment
- include at least one skeptical segment
- include at least one poor-fit segment
- include negative controls
- record free reactions before structured classification
- compare prompt variants when wording may be steering the reaction
- document uncertainty instead of smoothing it away
- write kill criteria before interpreting results
- finish with `templates/smallest-real-anchor.md`

## Why v0.1 Is File-Based

The first version is file-based because the method matters more than automation. Files make assumptions reviewable. They keep the workflow portable, auditable, forkable, and easy to adapt without hiding judgment inside a product interface or scoring engine.

There is no CLI, API, browser app, model integration, or automated analysis in v0.1.

## SearCue Example

`examples/searcue/` contains a complete example Product Preflight for a fictional app idea. SearCue is a sample case and method stress test. It is not the Signal Check project itself. Use it as a reference for artifact shape, not as proof that the idea is good.

Read it in this order:

1. `examples/searcue/brief.md`
2. `examples/searcue/sampling-plan.yaml`
3. `examples/searcue/stimuli.yaml`
4. `examples/searcue/example-raw-responses.md`
5. `examples/searcue/example-scored-results.yaml`
6. `examples/searcue/preflight-report.md`

## Forbidden Claims

Do not use Signal Check outputs to claim:

- validated purchase intent
- representative evidence
- real user voices
- predict demand
- AI replaces user research
- market validation
- guaranteed willingness to pay
- launch readiness
- synthetic testimonials

The kit may document scoring, but only as structured classification against anchors with evidence and uncertainty. Treat scoring as an organizing lens, not a product promise.

## Manual Use

Start here:

1. Read `docs/quickstart.md`.
2. Create `runs/<your-run-name>/`.
3. Copy the needed files from `templates/`, including `product-brief.md`, `sampling-plan.yaml`, `stimuli.yaml`, `negative-controls.yaml`, `prompt-robustness-plan.yaml`, `raw-responses.md`, `scored-results.yaml`, `bias-audit.yaml`, `preflight-report.md`, and `smallest-real-anchor.md`.
4. Fill the product brief before selecting or generating any respondent variants.
5. Select segment files from `panels/general/` or draft a new segment with `templates/add-segment/`.
6. Fill `stimuli.yaml`; use `examples/searcue/stimuli.yaml` as a completed shape reference.
7. Run the prompt sequence in `prompts/` manually and save raw outputs before summaries.
8. Classify reactions against anchors, complete a bias audit, and write the preflight report.
9. Decide whether the Smallest Real Anchor is concrete enough to run.

Keep all generated or collected material in `runs/`. Keep shareable summaries in `reports/`.

## License

MIT
