# 02 Elicit Neutral Reactions

Version: 0.1

## Purpose

Collect free reactions to a stimulus before any structured scoring or summary.

## Use When

Use this after blind respondent variants exist and a stimulus is ready.

## Do Not Use When

Do not use this to ask whether someone would buy, to create a numeric score, to produce testimonials, or to simulate real user voices.

## Input Contract

Provide:

- product brief
- respondent variant
- stimulus
- negative controls, if this is a control pass
- current workaround context
- explicit instruction that rejection is allowed

## Method

1. Show one stimulus at a time.
2. Ask for free reaction before structured questions.
3. Ask what is clear, confusing, missing, risky, irrelevant, or premature.
4. Ask what current workaround this would compete with.
5. Ask what would make the idea easy to reject.
6. Preserve raw reaction before interpretation.

## Output Format

Return:

- segment_id:
- variant_id:
- stimulus_id:
- free_reaction:
- what_is_clear:
- what_is_confusing:
- perceived_problem:
- current_workaround:
- objections:
- rejection_reasons:
- uncertainty:

## Guardrails

- Do not ask for purchase ratings.
- Do not ask if they would buy.
- Do not ask for a numeric score.
- Do not steer toward praise.
- Do not turn reactions into testimonials.
- Make rejection, confusion, and indifference acceptable.
- If the stimulus is a negative control, label the result as a control reaction.

## Failure Handling

If the reaction is only positive, ask for what would make the idea fail or feel irrelevant.

If the reaction sounds like marketing copy, ask for plain-language objections.

If the response invents external facts, mark them as unsupported.

If the negative control receives strong praise, flag possible over-positivity for the bias audit.

## Examples

Good:

> I understand this as a helper during an active workflow, but I do not know why I would trust it over my current checklist. I would need to see where it fits before I care.

Bad:

> This is a must-have product and users will love it.

## Review Checklist

- Is the raw reaction preserved?
- Is rejection explicitly allowed?
- Are objections and current workarounds captured?
- Are there no numeric scores or purchase-intent claims?
- Are negative controls flagged when used?
- Is uncertainty visible?
