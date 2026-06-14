# Segment Contract

## Purpose

Defines the minimum stable structure for this artifact in a v1-compatible Signal Check run.

## Required fields

- `segment_id`
- `perspective_type`
- `situation`
- `job_or_pressure`
- `current_alternative`
- `likely_objections`
- `evidence_needed`
- `poor_fit_reason`

## Verdict rules

Use:

- `ready` when the artifact is clear, conservative, and sufficient for the next method step.
- `revise` when the artifact is directionally useful but needs concrete repair.
- `block` when it creates false confidence, unsafe claims, or unusable ambiguity.

## Anti-claim rule

This artifact must not imply representative evidence, validated purchase intent, or real-user demand unless supported by a separate real-world test outside Signal Check.

## Traceability rule

Each conclusion should be traceable to an explicit input, reaction, control result, or limitation note.
