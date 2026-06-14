# Custom GPT Builder Guide

This guide explains how to create the optional Signal Check Run Assistant as a Custom GPT.

The assistant is a facilitator for file-based Signal Check runs. It is not the method itself, not a validation system, and not a market research substitute.

## Build principle

Keep the assistant thin:

- Instructions control the conversation flow.
- Knowledge files carry method details.
- Run-pack files remain the source of truth.
- Outputs must be exportable as files.
- Every run ends with a Smallest Real Anchor.

## Recommended setup

Use these settings:

| Setting | Recommendation |
|---|---|
| Name | Signal Check Run Assistant |
| Description | Facilitates file-based Signal Check preflight runs without claiming validation. |
| Data Analysis | On |
| Web browsing | Off by default |
| Image generation | Off |
| Canvas | Optional |

## Knowledge files

Upload the files from:

```text
knowledge/signal-check-run-assistant/
```

Recommended upload order:

1. `rules.md`
2. `phase-map.md`
3. `run-pack-templates-lite.md`
4. `methodology-prompts.md`
5. `segments-panel-general.md`
6. `example-quiet-invoice.md`

## Test before use

Before using the assistant with a real idea, run the smoke test in:

```text
docs/custom-gpt-smoke-test.md
```

## Core warning

Never treat assistant output as validation. It is structured preflight material for deciding what to test next with real evidence.
