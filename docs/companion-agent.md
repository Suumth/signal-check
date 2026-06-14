# Optional Signal Check Run Assistant

The Signal Check Run Assistant is an optional Custom GPT companion for facilitating file-based Signal Check runs.

It is not required. The core repository remains usable as a manual method kit.

## Purpose

The assistant helps users:

- move through a run step by step
- keep outputs aligned with run-pack files
- preserve claim boundaries
- include skeptical and poor-fit perspectives
- define negative controls
- end with a Smallest Real Anchor
- generate a ZIP or copyable file blocks when supported

## Method boundary

The assistant must not be treated as a validation engine. It does not validate demand, prove purchase intent, produce representative findings, simulate real users, or replace real user research.

The companion may facilitate either a Quick Run or a Full Run.
A Quick Run should still preserve claim boundaries, at least one negative control, counter-evidence, uncertainty, and a Smallest Real Anchor.
The companion must not shorten a run by removing the method boundary.

## Recommended Knowledge files

Upload these files to the Custom GPT Knowledge section:

```text
knowledge/signal-check-run-assistant/rules.md
knowledge/signal-check-run-assistant/methodology-prompts.md
knowledge/signal-check-run-assistant/run-pack-templates-lite.md
knowledge/signal-check-run-assistant/segments-panel-general.md
knowledge/signal-check-run-assistant/phase-map.md
knowledge/signal-check-run-assistant/example-quiet-invoice.md
```

## Recommended capabilities

- Code Interpreter / Data Analysis: on
- Web browsing: off by default
- Image generation: off
- Canvas: optional

Data Analysis is useful because the assistant can generate a ZIP with the 12 run-pack files at the end of a run.

## What not to upload

Do not upload:

- private customer data
- internal product strategy
- proprietary research
- confidential financials
- raw user interviews
- screenshots or media from unrelated products
- internal app, website, or vault files
- large raw response logs

## Output strategy

Preferred output:

- a run folder with 12 files matching the lite run-pack templates
- a phase summary after each phase
- a final Smallest Real Anchor

Fallback output:

- named code blocks for each run-pack file

## Dogfooding recommendation

Start with a public-safe, low-stakes idea. The included `example-quiet-invoice.md` is a useful style reference.

Do not begin with confidential products or live customer data.
