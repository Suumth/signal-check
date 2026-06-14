# Smallest Real Anchor Contract

## Purpose

Defines the minimum stable structure for this artifact in a v1-compatible Signal Check run.

## Required fields

- `anchor_id`
- `real_audience`
- `real_action`
- `artifact_to_send_or_show`
- `time_window`
- `observable_signal`
- `stop_evidence`
- `claim_boundary`
- `next_decision`

## Verdict rules

Use:

- `ready` when the artifact is clear, conservative, and sufficient for the next method step.
- `revise` when the artifact is directionally useful but needs concrete repair.
- `block` when it creates false confidence, unsafe claims, or unusable ambiguity.

## Anti-claim rule

This artifact must not imply representative evidence, validated purchase intent, or real-user demand unless supported by a separate real-world test outside Signal Check.

## Traceability rule

Each conclusion should be traceable to an explicit input, reaction, control result, or limitation note.
