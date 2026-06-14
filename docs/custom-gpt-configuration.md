# Custom GPT Configuration

This document describes the recommended setup for the optional Signal Check Run Assistant.

## Name

Signal Check Run Assistant

## Short description

Facilitates file-based Signal Check preflight runs without claiming validation.

## Recommended capabilities

- Code Interpreter / Data Analysis: on
- Web browsing: off by default
- Image generation: off
- Canvas: optional

## Knowledge files to upload

Upload these files:

```text
knowledge/signal-check-run-assistant/rules.md
knowledge/signal-check-run-assistant/methodology-prompts.md
knowledge/signal-check-run-assistant/run-pack-templates-lite.md
knowledge/signal-check-run-assistant/segments-panel-general.md
knowledge/signal-check-run-assistant/phase-map.md
knowledge/signal-check-run-assistant/example-quiet-invoice.md
```

## Files not to upload

Do not upload:

- private customer data
- confidential product strategy
- internal research
- raw user interviews
- financial data
- proprietary app, website, or vault files
- screenshots or videos
- large raw response logs

## Conversation starters

```text
Start a new Signal Check run.
Continue a run from an existing run pack.
Review my run for claim safety.
Turn these findings into a Smallest Real Anchor.
```

## Suggested first test run

Use a public-safe idea such as `Quiet Invoice`, a tiny tool that helps freelancers clarify invoice follow-up messages without pretending to validate market demand.

## Maintenance notes

- Keep the GPT Instructions compact.
- Put detailed rules in Knowledge files.
- Keep Knowledge files public-safe and data-minimal.
- Update the assistant setup only when method contracts or run-pack templates change.
- Do not let the Custom GPT become the canonical method source. The repository remains canonical.
