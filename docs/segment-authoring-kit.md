# Segment Authoring Kit

## Purpose

Signal Check uses segments, not fake personas.

A segment is a reusable perspective defined by context, constraints, likely objections, and real-world reachability. It is not an invented character with a name, age, backstory, or fabricated quote.

## Segment design goals

A good segment helps a run ask better questions.

It should:

- expose different interpretations of the same idea
- make likely objections visible
- prevent founder overconfidence
- include skeptical and poor-fit perspectives
- connect synthetic preflight output to real-world recruiting or testing

It should not:

- pretend to be a real person
- represent a market statistically
- produce testimonial-style language
- guarantee demand
- collapse into generic “target customer” praise

## Required segment fields

### `id`

Stable machine-readable identifier.

Example:

```yaml
id: task_overloaded_solo_builder
```

### `label`

Human-readable segment label.

Example:

```yaml
label: Task-overloaded solo builder
```

### `fit`

One of:

- `fit`
- `adjacent`
- `skeptical`
- `poor_fit`
- `non_market_control`

### `problem_or_job`

The practical situation that may make the product relevant.

Good:

```yaml
problem_or_job: "Needs to decide what to build next but lacks time for formal research."
```

Weak:

```yaml
problem_or_job: "Wants innovative AI products."
```

### `selection_logic`

Why this segment belongs in a run.

Example:

```yaml
selection_logic: "Likely to value fast pre-build clarity but may over-trust AI output."
```

### `likely_objections`

Concrete objections the segment may raise.

Examples:

- “This sounds like generic brainstorming.”
- “I do not trust synthetic reactions.”
- “I need a real recruiting path, not more documents.”

### `trust_needs`

What the segment would need before taking the method seriously.

Examples:

- clear boundaries
- examples of bad outputs
- source files that can be inspected
- repeatable run steps
- explicit next real-world test

### `reachability`

Where this segment can be found in the real world.

Examples:

- founder communities
- internal product teams
- indie builder forums
- local business networks
- customer support teams

### `do_not_assume`

Claims the run must not infer for this segment.

Examples:

- Do not assume budget.
- Do not assume purchase intent.
- Do not assume technical skill.
- Do not assume the segment trusts AI-generated output.

### `bias_risks`

Ways the segment may distort the run.

Examples:

- too enthusiastic about novelty
- too hostile to new tooling
- over-indexes on polish
- ignores distribution constraints

### `non_market_control`

Boolean. Use `true` only for a segment that should not plausibly want the product.

A negative-control segment helps detect whether the prompt makes every idea sound good.

## Recommended panel composition

A reusable panel should include:

| Perspective | Minimum count | Purpose |
|---|---:|---|
| Fit | 2 | Tests likely relevance. |
| Adjacent | 1 | Shows expansion or confusion risk. |
| Skeptical | 1 | Surfaces trust and adoption barriers. |
| Poor fit or non-market control | 1 | Checks prompt bias and overgeneralization. |

## Review checklist

Before committing a segment, check:

- Does it describe a context rather than a fake person?
- Does it include objections?
- Does it include `do_not_assume` boundaries?
- Is reachability concrete enough to inform the Smallest Real Anchor?
- Could a skeptical reader understand why this segment is included?
- Does the segment avoid demographic stereotypes?
- Does it avoid claims about real market size or demand?
