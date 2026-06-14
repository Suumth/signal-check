# Run Assistant Dogfooding Protocol

Dogfooding tests whether the optional Signal Check Run Assistant can facilitate a run without weakening the method.

## Goal

Evaluate the assistant as a facilitator, not as an oracle.

## Test constraints

- Use a public-safe idea.
- Do not use private product data.
- Keep answers short.
- Let the assistant ask one question at a time.
- Save outputs as run-pack files.
- Review claim safety before treating the run as useful.

## Recommended test idea

Use a data-minimal idea such as:

```text
Quiet Invoice: a calm invoice reminder helper for freelancers.
```

## Test phases

1. Setup
2. Test material
3. Analysis
4. Output

## Evidence to capture

- assistant questions
- phase summaries
- generated files
- stop conditions
- claim-risk findings
- friction points
- final Smallest Real Anchor

## Decision

End with one of:

- ready for guided beta use
- revise assistant instructions
- revise knowledge files
- block until method failure is fixed
