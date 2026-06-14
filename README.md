# Signal Check

Signal Check is a file-based open-source method kit for checking product ideas before building them.

It helps teams, indie founders, solo builders, product leads, and AI-assisted builders run a careful Product Preflight: frame an idea, choose segment-first perspectives, test messages, surface objections, audit bias, and end with the smallest real-world test worth doing next.

Signal Check is not an app, CLI, API, web app, model integration, or automated research system. It is a set of Markdown, YAML, JSON Schema, prompt, checklist, and contract files designed for manual use.

## What It Helps With

- Clarify who an idea might be for.
- Separate segments from invented personas.
- Compare messages without treating reactions as proof.
- Include fitting, adjacent, skeptical, poor-fit, and non-market-control perspectives.
- Use negative controls to catch false support.
- Check prompt robustness before trusting a pattern.
- Preserve evidence, counter-evidence, uncertainty, and confidence notes.
- Run a bias audit before summarizing.
- Apply kill criteria.
- Translate the run into a Smallest Real Anchor.

## What It Cannot Do

Signal Check does not:

- Do not use it to validate purchase intent.
- Do not use it to produce representative findings.
- Do not use it to create real user voices.
- Do not use it to predict demand.
- Do not use it to generate synthetic testimonials.
- Do not use it to replace user research.
- Do not use it to prove product-market fit.
- Do not use it to decide that you should build.

Its output is directional preflight material. It can make the next real test clearer; it cannot make an idea true.

## How A Manual Run Works

The fastest path is to copy the ordered run pack:

```text
cp -R templates/run-pack runs/my-run
```

Then fill the files in numeric order:

1. Set the run context.
2. Write the product brief.
3. Plan segment-first coverage.
4. Select fitting, adjacent, skeptical, poor-fit, and non-market-control perspectives.
5. Prepare stimuli and negative controls.
6. Plan prompt-robustness variants.
7. Save short raw reactions before interpreting.
8. Classify reactions with evidence, counter-evidence, uncertainty, and confidence notes.
9. Complete a bias audit.
10. Write a claim-safe preflight report.
11. Define the Smallest Real Anchor.

There is no scoring engine. Use classifications as organizing lenses, not grades.

## Important Files

- `docs/quickstart.md` gets you through a first run.
- `docs/workflow.md` explains the manual artifact order.
- `docs/method-boundaries.md` states what Signal Check can and cannot establish.
- `docs/manual-run-protocol.md` describes a complete manual run.
- `docs/claim-guardrails.md` lists allowed and forbidden claims.
- `docs/public-trust-statement.md` gives public wording boundaries.
- `contracts/v1/` defines stable v1 artifact contracts.
- `templates/run-pack/` is the copyable full run folder.
- `templates/v1/` contains compact v1 artifact templates.
- `schemas/v1/` contains v1 JSON Schemas.
- `prompts/v1/` contains release-candidate review prompts.
- `checklists/` contains operator, claim-safety, method-contract, and release-readiness checks.
- `quality-gates/` and `tools/quality/` contain optional maintainer validation checks.

## Examples

Use `examples/v1-release-candidate/` for small, public-safe teaching examples:

- `compact-product-brief/` shows a narrow, claim-safe product brief.
- `blocked-synthesis-claim-risk/` shows a synthesis that must be blocked and repaired.
- `real-anchor-ready/` shows a Smallest Real Anchor that moves outside the prompt environment.

Examples are teaching artifacts. They are not proof that any product should be built.

## Contributing

Contributions are welcome when they strengthen the method and preserve its boundaries.

Good contributions include clearer docs, stronger prompt guardrails, better segment definitions, safer templates, useful schemas, small public examples, and quality gates that catch risky claims.

Contributions will be blocked if they add fake validation language, synthetic testimonials, representative-claim framing, large raw-response dumps, proprietary product detail, or tooling that repositions Signal Check as automated market research.

Read:

- `CONTRIBUTING.md`
- `SECURITY.md`
- `MAINTAINERS.md`

## Repository Boundary

Signal Check should stay public, small, and method-focused. Do not add private runs, customer data, large raw responses, media assets, website code, app code, package-manager setup, or runtime implementation unless a future version explicitly changes scope.

## License

MIT
