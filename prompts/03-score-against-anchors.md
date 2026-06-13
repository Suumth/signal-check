# 03 Classify Against Anchors

Version: 0.1

## Purpose

Classify raw reactions against explicit anchors with evidence, counter-evidence, and uncertainty.

## Use When

Use this only after raw free reactions have been saved.

## Do Not Use When

Do not use this to validate an idea, calculate purchase intent, rank absolute product quality, predict demand, or create a Grade.

## Input Contract

Provide:

- raw reactions
- selected scoring dimensions
- anchor definitions
- segment IDs
- stimulus IDs
- negative-control labels
- kill criteria

## Method

1. Read the raw reaction before choosing an anchor.
2. Select the closest anchor for each dimension.
3. Quote or summarize evidence without inflating it.
4. Add counter-evidence.
5. Add uncertainty.
6. Note whether negative controls weaken confidence.
7. Keep classification separate from recommendation.

## Output Format

Return one row or block per dimension:

- segment_id:
- stimulus_id:
- dimension_id:
- anchor:
- evidence:
- counter_evidence:
- uncertainty:
- negative_control_relevance:
- reviewer_note:

## Guardrails

- Use scoring only as structured classification.
- Do not produce a single total Score.
- Do not produce a Grade.
- Do not claim validation, representative findings, real user voices, or measured purchase intent.
- Do not hide counter-evidence.
- Treat weak, mixed, and contradictory evidence as useful.

## Failure Handling

If evidence is missing, mark the dimension as insufficient evidence.

If the anchor choice feels forced, write "ambiguous" and explain why.

If a negative control performs as well as the main stimulus, reduce confidence and flag it for bias audit.

If the output starts sounding like a product verdict, rewrite it as evidence plus uncertainty.

## Examples

Good:

```yaml
dimension_id: comprehension
anchor: partial
evidence: "The reaction names the category but misses the active workflow."
counter_evidence: "The respondent asks what the product does differently from a checklist."
uncertainty: "The stimulus may be too short to judge workflow clarity."
```

Bad:

```yaml
overall_score: 92
grade: A
verdict: Validated
```

## Review Checklist

- Was raw evidence used?
- Is counter-evidence present?
- Is uncertainty present?
- Are negative controls considered?
- Is there no validation, demand, or purchase-intent language?
- Is there no total Score or Grade?
