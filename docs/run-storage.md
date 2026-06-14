# Run Storage And Repository Boundary
Signal Check is a public, file-based method kit.
The repository should contain the method, not private work.
## Repository contents
The public repository may contain:
- method documentation
- templates
- prompts
- schemas
- checklists
- quality gates
- public-safe teaching examples
- small fictional or sanitized examples
The public repository should not contain:
- private product runs
- customer or user data
- confidential product strategy
- internal company notes
- private research material
- raw interview material
- large raw response dumps
- screenshots, media, or assets from internal products
- proprietary details that are not needed to teach the method
## Recommended run locations
### Public-safe examples
Use:
```text
examples/<example-id>/
```

Only use this when the run is intentionally curated as a public teaching example.

Public examples should be small, sanitized, data-minimal, and clearly marked as examples. They must not imply validation, real user feedback, representative findings, or market proof.

### Private or internal runs

Use a folder outside the public repository, for example:

```text
../_local-runs/signal-check/<run-id>/
```

or another private workspace controlled by the operator.

### Temporary local runs inside a clone

If a local run is created inside the repository clone, use:

```text
_local-runs/<run-id>/
```

This path is ignored by Git and must not be used for public examples.

## About runs/

The top-level runs/ folder is reserved for local operator work and is ignored by default except for its README.

Do not commit private runs from runs/.

If a run should become public, curate it deliberately and move only the public-safe teaching version into examples/.

## Before committing a run-like folder

Check that the folder contains no:

* private customer data
* internal roadmap decisions
* proprietary product details
* raw user quotes unless explicitly public and permitted
* large raw response dumps
* synthetic testimonials
* claims of validation
* claims of representative evidence
* claims of market proof
* claims of real user feedback unless real users were actually involved and the material is safe to publish

## Safe public example rule

A public example should teach the method, not prove a product.

Use public examples to show:

* how to frame a product assumption
* how to compare stimuli
* how negative controls work
* how bias audit reduces over-reading
* how a Smallest Real Anchor is defined

Do not use public examples to claim that an idea should be built.
