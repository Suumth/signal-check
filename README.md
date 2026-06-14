# Signal Check

**Signal Check is a lightweight open-source method kit for testing product ideas before you build.**

It helps solo builders, indie makers, small product teams, and AI-assisted developers pressure-test early product decisions with structured prompts, negative controls, bias audits, and a concrete next real-world validation step.

Signal Check does **not** replace user research, analytics, interviews, or market data.
It gives you a disciplined preflight check before you spend serious time building.

> Signal Check does not tell you whether an idea will succeed.
> It helps you decide what to test next before you build too much.

Signal Check is not an app, CLI, API, web app, model integration, or automated research system. It is a set of Markdown, YAML, JSON Schema, prompt, checklist, and contract files designed for manual use.

## Use Signal Check when you want to know

- Is the product idea clear enough?
- Who is it actually for?
- Which message is strongest?
- Which objections are most likely?
- Where are we fooling ourselves?
- What is the smallest real-world test we should run next?

## The core belief

AI makes it easier than ever to build quickly.
Signal Check helps you slow down just enough to build the right thing.

## What Signal Check produces

A Signal Check run should end with a documented decision package:

- product brief
- target segments
- message variants
- negative controls
- likely objections
- bias audit
- signal summary
- smallest real-world validation step

The output is not a verdict.
It is a clearer next decision.

## Who Signal Check helps

| User | Problem | How Signal Check helps |
|---|---|---|
| Solo builders | Can build faster than they can validate | Adds a structured decision gate before implementation |
| Indie hackers | Have many ideas but limited time | Helps choose which idea or message deserves a real test |
| AI-assisted developers | LLMs often sound too agreeable | Forces objections, negative controls, and bias checks |
| Small product teams | Need lightweight discovery without heavy process | Creates a shared preflight document before sprint work |
| Founders without research budget | Need direction before spending money | Provides a low-cost first pass before real-world validation |
| Open-source maintainers | Need to explain value clearly | Tests whether the project's positioning is understandable |
| Product marketers | Need sharper messaging | Compares message variants and likely objections |

## What Signal Check is

Signal Check is a structured pre-build judgment process.

It is especially useful before writing code, designing a landing page, creating a campaign, or asking an AI coding agent to build a feature.

## What Signal Check is not

Signal Check is not:

- market research
- a statistically representative study
- a survey tool
- a replacement for user interviews
- a conversion predictor
- proof of demand
- proof of willingness to pay
- a way to generate fake testimonials
- a way to claim validation without real users

Signal Check produces hypotheses, warnings, and next-test recommendations, not certainty.

## Quickstart

1. Copy the run pack from `templates/run-pack/`.
2. Fill in the product brief.
3. Define specific target segments.
4. Add message variants and negative controls.
5. Run the prompts.
6. Score the results.
7. Write a signal summary.
8. Decide the smallest real-world test.

Do not treat the output as validation.
Use it to decide what to test next.

## Decision outcomes

Every Signal Check run should end with one of five decisions:

| Decision | Meaning |
|---|---|
| Kill | The idea is too vague, too weak, too risky, or not meaningfully different. |
| Reframe | The underlying problem may be real, but the current positioning is unclear. |
| Narrow | The idea is too broad. Choose a smaller segment, use case, or trigger moment. |
| Test | The signal is promising enough for a small real-world validation step. |
| Build small | Only choose this if the next build is minimal, reversible, and directly connected to the strongest signal. |

## Important Files

- `docs/quickstart.md` gets you through a first run.
- `docs/limitations.md` states what Signal Check cannot prove.
- `docs/scoring.md` explains qualitative scoring.
- `docs/quality-gates.md` lists checks before trusting a run.
- `docs/using-with-coding-agents.md` explains how to use Signal Check before coding-agent implementation.
- `docs/workflow.md` explains the manual artifact order.
- `docs/method-boundaries.md` states what Signal Check can and cannot establish.
- `docs/manual-run-protocol.md` describes a complete manual run.
- `docs/claim-guardrails.md` lists allowed and forbidden claims.
- `docs/public-trust-statement.md` gives public wording boundaries.
- `contracts/v1/` defines stable v1 artifact contracts.
- `templates/run-pack/` is the copyable full run folder.
- `schemas/v1/` contains v1 JSON Schemas.
- `prompts/v1/` contains release-candidate review prompts.
- `checklists/` contains operator, claim-safety, method-contract, and release-readiness checks.
- `quality-gates/` and `tools/quality/` contain optional maintainer validation checks.

## Example

See:
`examples/quiet-invoice-mini-run/`

This is a small public-safe example for a fictional product idea called Quiet Invoice.

Additional release-candidate teaching examples live in `examples/v1-release-candidate/`. Examples are teaching artifacts. They are not proof that any product should be built.

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
