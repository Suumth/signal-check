# Maintainers

Signal Check maintainers protect the method, not only the repository.

## Maintainer responsibilities

Maintainers should review for:

- Method coherence.
- Claim safety.
- Example sanitization.
- Prompt robustness.
- Negative-control integrity.
- Schema consistency.
- Public readability.
- Version-scope discipline.

## Maintainer review stance

A maintainer should be especially cautious when a contribution:

- Makes Signal Check sound more predictive than it is.
- Converts synthetic reactions into evidence claims.
- Hides skeptical or poor-fit perspectives.
- Removes failure modes or kill criteria.
- Adds large examples, raw responses, or private product details.
- Introduces scoring that looks precise without real evidence.

## Default decision language

Use these outcomes:

- `accept`: merge as proposed.
- `revise`: specify exact required changes.
- `block`: explain the boundary violation.
- `defer`: explain why the idea may fit a later version.

## Release responsibility

Before a release, maintainers should verify:

- All new examples are sanitized.
- Claim-risk language has been reviewed.
- Schemas parse.
- YAML artifacts parse.
- The changelog does not overclaim.
- The release preserves the file-based nature of the kit unless a later version explicitly changes scope.
