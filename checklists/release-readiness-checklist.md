# Release Readiness Checklist

## Scope

- [ ] Release scope is documented.
- [ ] Non-goals are explicit.
- [ ] No accidental CLI/API/web app/tooling was added.
- [ ] No private project files were added.
- [ ] Examples are compact and sanitized.

## Method integrity

- [ ] Negative controls are mandatory or strongly enforced.
- [ ] Skeptical and poor-fit perspectives are represented.
- [ ] Smallest Real Anchor is required in run flow.
- [ ] Claim limits are explicit.
- [ ] No fake market research language appears outside guardrails.

## Files

- [ ] Markdown files render cleanly.
- [ ] YAML files parse.
- [ ] JSON files parse.
- [ ] Schemas are versioned.
- [ ] Templates are copyable.
- [ ] Prompts have purpose, inputs, output format, and guardrails.

## Repo hygiene

- [ ] `git diff --check` passes.
- [ ] Claim-risk grep has been reviewed.
- [ ] No large files are introduced.
- [ ] No unrelated directories are modified.
- [ ] Commit message matches scope.
