# Contributing to Signal Check

Signal Check is an open-source method kit for checking product ideas before building. Contributions are welcome when they strengthen the method without turning synthetic outputs into fake validation.

## Contribution principles

Every contribution must preserve these boundaries:

- Signal Check does not replace user research.
- Signal Check does not prove demand, willingness to pay, or market size.
- Synthetic perspectives are not user quotes.
- Examples must be public, small, sanitized, and non-proprietary.
- Skeptical, poor-fit, and non-market-control perspectives are part of the method, not edge cases.
- Every preflight should lead toward a real next test.

## Good contribution types

- Clearer method documentation.
- Better prompts with stronger guardrails.
- Segment or panel definitions that reduce bias.
- Templates that make real testing easier.
- Schemas that improve consistency without fake precision.
- Public examples that teach limits, not hype.
- Quality gates that catch risky claims or malformed artifacts.

## Contributions that will be blocked

- Synthetic testimonials or fake user quotes.
- Claims that imply representative research.
- Claims that imply validated demand, purchase intent, or conversion evidence.
- Large raw-response dumps.
- Proprietary product details.
- Examples that are hard to sanitize.
- Tooling that repositions Signal Check as an automated market-research oracle.

## Recommended workflow

1. Open an issue describing the change.
2. State which artifact type you want to change: docs, prompt, panel, schema, template, example, or quality gate.
3. Include the risk you are trying to reduce.
4. Use the relevant checklist from `checklists/`.
5. Submit a focused pull request.
6. Accept maintainer revisions on claim safety and method boundaries.

## Pull request expectation

A pull request should answer:

- What problem does this change solve?
- Which files changed?
- What method boundary does it protect?
- What could go wrong if this change is misused?
- How did you check that no fake validation language was introduced?

## Maintainer outcomes

A maintainer may mark a contribution as:

- `accept`: ready to merge.
- `revise`: valuable but needs concrete changes.
- `block`: method or claim-safety risk.
- `defer`: reasonable but not aligned with the current version scope.
