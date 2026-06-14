# Run Artifact Names
Signal Check uses stable artifact names so runs remain understandable across manual use, examples, templates, and quality gates.
## Canonical final artifact
The canonical final summary artifact is:
```text
preflight-report.md
```

In the numbered full run pack, the same artifact is:

```text
10-preflight-report.md
```

This is the standard end product of a Signal Check run.

It should contain:

* the bounded interpretation
* what the run can and cannot say
* what to keep
* what to change
* what to stop
* segment differences
* negative-control readout
* prompt-robustness readout
* bias and kill-criteria notes
* claims not allowed
* the Smallest Real Anchor or a link to it

## Synthesis

synthesis.md may be used as an intermediate working note, but it is not the preferred final artifact for new public examples or templates.

If synthesis output exists, fold the durable decision content into preflight-report.md.

## Signal summary

signal-summary.md is a legacy or informal term.

Do not use signal-summary.md for new official examples, templates, or quality gates.

Use preflight-report.md instead.

## Numbered and unnumbered forms

Use numbered filenames in complete run packs when ordering matters:

```text
10-preflight-report.md
11-smallest-real-anchor.md
```

Use unnumbered filenames in small public examples when simplicity matters:

```text
preflight-report.md
smallest-real-anchor.md
```

Both naming styles should preserve the same method boundary:

A report is not validation. It is a bounded preflight interpretation that points to a real-world next test.
