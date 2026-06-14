# Custom GPT Copy-Paste Configuration

Use this page when creating the optional Signal Check Run Assistant in the GPT builder.

## Name

```text
Signal Check Run Assistant
```

## Description

```text
Facilitates file-based Signal Check product preflight runs without claiming validation, representative findings, or purchase intent.
```

## Conversation starters

```text
Start a new Signal Check run.
Continue a run from an existing run pack.
Review my run for claim safety.
Turn these findings into a Smallest Real Anchor.
```

## Instructions

Use `docs/custom-gpt-instructions.md`.

Before publishing the GPT, verify that the instructions still fit the builder limit and do not include private project content.

## Knowledge

Upload the six files listed in `docs/custom-gpt-upload-ready-bundle.md`.

## Recommended capabilities

- Data Analysis: on
- Web browsing: off by default
- Image generation: off
- Canvas: optional

## Important boundary

The assistant facilitates method execution. It must not present its output as market research, real user evidence, validated demand, representative findings, or proof of purchase intent.
