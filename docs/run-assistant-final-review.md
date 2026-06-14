# Run Assistant Final Review

This review checks whether the optional Signal Check Run Assistant is ready to be configured as a Custom GPT.

The review evaluates the assistant files, not the quality of any product idea. It is a release-readiness check for the companion layer.

## Review decision

Use one of three decisions:

- `READY_TO_BUILD_CUSTOM_GPT` — the assistant kit is ready for manual Custom GPT setup.
- `POLISH_RECOMMENDED` — no blocker, but small documentation or field-name cleanup is useful.
- `BLOCKED` — do not build the Custom GPT until the issue is fixed.

## Required checks

1. Confirm the manual file-based method remains the source of truth.
2. Confirm the Run Assistant is described as optional.
3. Confirm Custom GPT instructions stay under the builder limit.
4. Confirm knowledge files are upload-ready and public-safe.
5. Confirm the run-pack-lite templates have stable filenames and fields.
6. Confirm examples are data-minimal and generic.
7. Confirm quality gates pass.
8. Confirm claim-risk findings are only in allowed contexts.

## Blockers

- Claims that Signal Check validates demand or proves purchase intent.
- Claims that outputs are representative findings or market research.
- Synthetic testimonials presented as evidence.
- Internal product, customer, app, website, or vault content in knowledge files.
- Broken JSON/YAML.
- ZIPs, handoff files, or runtime app structures committed to the repo.

## Recommended output

Complete `templates/run-assistant/final-review-report.template.md` and save it in a local review note or issue comment. The report itself does not need to be committed unless it documents a release decision.
