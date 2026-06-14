# Run Assistant Output ZIP Contract

If Data Analysis is available, the optional assistant may produce a ZIP at the end of a run.

## Required files

```text
01-product-brief.md
02-sampling-plan.yaml
03-stimuli.yaml
04-negative-controls.yaml
05-prompt-robustness-plan.yaml
06-raw-reactions.md
07-synthesis.md
08-bias-audit.yaml
09-claim-safety-review.md
10-smallest-real-anchor.md
11-run-review.yaml
12-run-index.md
```

## ZIP naming

```text
signal-check-run-<run-id>.zip
```

## Required boundary note

Every run index must state:

```text
This run is directional preflight work. It does not validate demand, prove purchase intent, replace real user research, or produce representative findings.
```

## Fallback without Data Analysis

If ZIP creation is unavailable, output each file as a clearly named code block.
