# Review Upload-Ready Run Assistant Companion

Use this prompt to review the optional Signal Check Run Assistant before configuring it as a Custom GPT.

## Task

Review the assistant kit as a companion layer, not as part of the core method.

## Inputs

- `docs/custom-gpt-instructions.md`
- `docs/custom-gpt-configuration.md`
- `docs/custom-gpt-upload-ready-bundle.md`
- `knowledge/signal-check-run-assistant/`
- `templates/run-pack-lite/`

## Review rules

- Do not treat the assistant as validation.
- Do not infer real user evidence.
- Do not approve if private or internal project data appears in upload files.
- Block if the assistant claims demand, representativeness, purchase intent, or synthetic testimonials.

## Output

Return one decision:

- `READY_TO_BUILD_CUSTOM_GPT`
- `POLISH_RECOMMENDED`
- `BLOCKED`

Include blockers, polish notes, and recommended next action.
