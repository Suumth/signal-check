# Quality Gates

Use these quality gates before treating a Signal Check run as useful.

The goal is not to create certainty.
The goal is to prevent fake certainty.

## Input quality gates

Before running prompts, verify:

- The product brief is specific.
- The target users are not "everyone".
- The product promise avoids guaranteed outcomes.
- Risky claims are explicitly listed.
- The problem is described in plain language.
- The product does not rely on vague AI magic.
- The intended next decision is clear.

A weak input brief creates weak output.

## Prompt quality gates

The prompts must not ask the model to validate the idea.

Good prompts ask the model to:

- identify objections
- compare alternatives
- detect confusion
- evaluate negative controls
- surface counter-evidence
- separate interest from willingness to act
- recommend a smallest real-world test

Avoid prompts that ask:

- "Why is this a good idea?"
- "Validate this concept."
- "Confirm the market need."
- "Write enthusiastic user reactions."
- Do not ask: "Generate testimonials."

## Output quality gates

A useful Signal Check output includes:

- clear segment-level differences
- strongest and weakest messages
- likely objections
- negative-control interpretation
- bias audit
- decision recommendation
- smallest real-world validation step

A useful preflight report must include a section called:

```text
What This Run Still Does Not Know
```

This section should name the real-world unknowns that Signal Check cannot answer.

A report without remaining uncertainty is suspicious, not strong.

A weak output usually contains:

- generic praise
- no objections
- no counter-evidence
- no real next step
- claims that the idea is validated
- fake user quotes
- fake survey-like certainty

## Claim safety gates

The run must not claim:

- "validated by users"
- "proven market demand"
- "representative results"
- "guaranteed conversion"
- "statistically significant"
- "real customer feedback" unless it actually came from real people
- "market research" unless the work included an appropriate real-world research method

Safer language:

- "preflight signal"
- "hypothesis"
- "likely objection"
- "message clarity"
- "next test"
- "synthetic pressure test"
- "real-world validation step"

## Negative control gates

Every serious run should include negative controls.

Useful negative controls include:

- hype claims
- wrong audience framing
- overbuilt enterprise framing
- guaranteed outcome claims
- vague AI-first claims
- messages that sound impressive but unclear

A negative control should usually perform worse than the real stimuli.

If a negative control performs as well as the real message, investigate:

- Is the real message too vague?
- Is the model being too agreeable?
- Is the audience too broad?
- Is the scoring too generous?
- Is the product promise too generic?

## Final gate

Before building, ask:

> What would we test with real people next?

If there is no concrete answer, do not build yet.
