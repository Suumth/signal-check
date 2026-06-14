# Manual Run Protocol

## Purpose

The manual run protocol describes how to run Signal Check without software automation.

It is designed for founders, builders, product teams, and AI-assisted builders who want a disciplined preflight before design, code, budget, or launch work.

## Core principle

A run is not a measurement system.

A run is a structured thinking exercise that helps identify:

- who the idea might be for
- what is understood quickly
- what sounds useful
- what remains unclear
- what objections appear early
- which claims are unsafe
- what should be tested with real people or real behavior next

## Required inputs

A run needs:

1. A product brief.
2. A narrow run question.
3. A sampling plan with multiple perspectives.
4. At least two message or positioning variants.
5. At least one negative control.
6. Kill criteria.
7. A commitment to a Smallest Real Anchor.

## Run phases

### Phase 0 — Frame the run

Write one sentence that defines the run question.

Good:

```text
Which message makes the problem easiest to understand for people who already struggle with scattered personal notes?
```

Weak:

```text
Will this product succeed?
```

A Signal Check run should answer a preflight question, not a business prophecy.

### Phase 1 — Write the product brief

The brief should be specific enough to react to, but not packed with persuasion.

Include:

- product idea
- target context
- problem hypothesis
- current alternative
- proposed value
- constraints
- claims that must not be made
- real-world test candidate

Do not include:

- invented traction
- fake user quotes
- inflated market numbers
- unsupported compatibility claims
- private product internals that are not needed for the run

### Phase 2 — Select perspectives

Use segment-first panels.

A minimal run should include:

- 2 likely-fit segments
- 1 adjacent segment
- 1 skeptical segment
- 1 poor-fit or non-market control

The goal is not to simulate a population. The goal is to avoid only listening to the product’s most flattering imagined audience.

### Phase 3 — Prepare stimuli

Stimuli are the things the segments react to.

Use short, comparable variants:

- category-first message
- problem-first message
- outcome-first message
- deliberately weak or overbroad negative control

Each stimulus should be labeled as a hypothesis, not as a final conclusion.

### Phase 4 — Elicit free reactions

Ask for natural reactions, not scores first.

Capture:

- what is understood
- what sounds useful
- what feels vague
- what creates doubt
- what the person would need to see next
- what would make the idea irrelevant

Avoid:

- “Rate this from 1 to 5” as the first move
- “Would you buy this?” as the main question
- forcing positive/negative balance if the reaction is clearly one-sided

### Phase 5 — Audit bias and robustness

Check for:

- leading language
- over-specific prompts
- response collapse across segments
- all segments sounding too similar
- negative controls performing too well
- missing skeptical perspectives
- ungrounded claims in synthesis

A run with no objections is suspicious, not successful.

### Phase 6 — Synthesize without cherry-picking

The synthesis must include:

- strongest understood value
- clearest confusion
- strongest objection
- segment differences
- negative-control result
- confidence level
- what not to claim
- what to test next

Do not summarize only the most encouraging reactions.

### Phase 7 — Define the Smallest Real Anchor

Every run ends with one real-world test.

A Smallest Real Anchor should be:

- small enough to run soon
- outside the prompt
- observable
- tied to the riskiest assumption
- capable of producing a “stop or change direction” signal

Examples:

- show two landing-page messages to 10 reachable people and record which one they can explain back
- ask 5 target users to bring their current workaround and describe where it fails
- post a narrowly worded beta invite in one relevant community and measure qualified replies, not likes
- run a concierge test manually before building software

## Minimum output set

A complete manual run folder should include either the numbered run-pack form or the compact public-example form.

### Numbered full run-pack form

```text
00-run-context.md
01-product-brief.md
02-sampling-plan.yaml
03-selected-segments.yaml
04-stimuli.yaml
05-negative-controls.yaml
06-prompt-robustness-plan.yaml
07-raw-responses.md
08-scored-results.yaml
09-bias-audit.yaml
10-preflight-report.md
11-smallest-real-anchor.md
```

### Compact public-example form

```text
product-brief.md
sampling-plan.yaml
stimuli.yaml
negative-controls.yaml
preflight-report.md
smallest-real-anchor.md
```

preflight-report.md or 10-preflight-report.md is the canonical final interpretation artifact.

Do not use signal-summary.md for new official examples or templates.

## Failure conditions

Treat the run as failed or incomplete if:

- no skeptical segment is included
- no poor-fit or negative control is included
- the synthesis contains demand claims
- synthetic output is described as user evidence
- the next step is “build the product” instead of a smaller real test
- the run cannot say what would change the team’s mind
