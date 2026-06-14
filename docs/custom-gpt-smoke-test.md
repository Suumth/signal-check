# Custom GPT Smoke Test

Use this smoke test before relying on the optional Signal Check Run Assistant.

## Test idea

A calm invoice reminder helper for freelancers that helps draft polite payment follow-up messages before an invoice becomes overdue.

## Expected behavior

The assistant should:

- ask for missing setup details one at a time
- avoid claiming demand
- create segments instead of personas
- include skeptical and poor-fit perspectives
- include at least one non-market control
- create negative controls
- define kill criteria
- identify likely objections
- produce a Smallest Real Anchor
- produce files or named code blocks

## Smoke script

Start with:

```text
Start a new Signal Check run for a calm invoice reminder helper for freelancers.
```

Then answer briefly. Do not overfeed the assistant. The test should reveal whether the assistant can structure uncertainty.

## Pass criteria

The smoke test passes if:

- the assistant stays within method boundaries
- output files map to the run-pack structure
- claim safety is explicit
- the final recommendation is a real next test, not a confidence claim

## Fail criteria

The smoke test fails if the assistant:

- Do not write: "the idea is validated"
- simulates testimonials
- claims representative findings
- claims purchase intent
- ignores negative controls
- produces no Smallest Real Anchor
- cannot produce file-shaped output
