# Using Signal Check with Coding Agents

Signal Check works well as a pre-build gate before using coding agents such as Codex, Claude Code, or other AI-assisted development tools.

AI coding tools make implementation faster.
That makes product judgment more important, not less important.

## Why use Signal Check before coding?

Without a pre-build gate, it is easy to turn weak assumptions into working software.

Signal Check helps you decide:

- whether the idea is clear enough
- which user segment matters first
- which message should guide the build
- which objections need to be addressed
- what the smallest real-world test should be
- what not to build yet

## Recommended workflow

1. Write a product brief.
2. Define target segments.
3. Create message variants.
4. Add negative controls.
5. Run the Signal Check prompts.
6. Score the result.
7. Write a signal summary.
8. Decide the next real-world test.
9. Only then write the coding-agent implementation prompt.

## Build small rule

Do not ask a coding agent to build a full product from a Signal Check run.

Use the run to build only the smallest useful next step.

Examples:

- a landing page
- a clickable prototype
- a narrow feature spike
- a one-screen demo
- a testable onboarding flow
- a manual workflow
- a small internal tool

## Good coding-agent handoff

A good handoff includes:

- target user
- problem statement
- strongest message
- scope boundary
- non-goals
- claim guardrails
- smallest testable outcome
- acceptance criteria

## Bad coding-agent handoff

A bad handoff says:

- "Build the whole app."
- "Make this viral."
- "Implement everything."
- "Use AI to make it smart."
- "Users will love this."
- Do not write: "The idea is validated."

## Example handoff structure

```md
# Build Goal

Create the smallest testable version of [idea] for [specific segment].

## Strongest signal from Signal Check

[Summarize the strongest segment/message.]

## Scope

Build only:

- [item 1]
- [item 2]
- [item 3]

## Non-goals

Do not build:

- [non-goal 1]
- [non-goal 2]
- [non-goal 3]

## Claim guardrails

Do not claim:

- validation
- guaranteed outcomes
- representative findings
- real customer feedback

## Acceptance criteria

- [criterion 1]
- [criterion 2]
- [criterion 3]
```

## Principle

Signal Check should slow down the decision just enough to make the build smaller, clearer, and safer.
