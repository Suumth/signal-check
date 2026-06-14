# Run Assistant Final Review Checklist

## Scope

- [ ] Run Assistant is optional.
- [ ] Manual file-based Signal Check workflow remains source of truth.
- [ ] No app, CLI, API, web app, or model integration was introduced.
- [ ] No handoff ZIPs or pack metadata were committed.

## Custom GPT readiness

- [ ] `docs/custom-gpt-instructions.md` exists.
- [ ] Instructions are below 8,000 characters.
- [ ] Role is facilitator/operator, not validation oracle.
- [ ] One-question-at-a-time behavior is clear.
- [ ] Phase summaries are required.
- [ ] ZIP fallback and codeblock fallback are clear.

## Knowledge files

- [ ] All expected knowledge files exist.
- [ ] Knowledge files are public-safe.
- [ ] Knowledge files avoid internal product names and raw private data.
- [ ] Field names match `templates/run-pack-lite/`.

## Claim safety

- [ ] No demand validation claims.
- [ ] No representative research claims.
- [ ] No synthetic testimonials.
- [ ] No purchase-intent proof.
- [ ] No "AI replaces user research" language.

## Decision

- [ ] READY_TO_BUILD_CUSTOM_GPT
- [ ] POLISH_RECOMMENDED
- [ ] BLOCKED
