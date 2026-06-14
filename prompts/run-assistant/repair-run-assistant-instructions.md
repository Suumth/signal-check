# Repair Run Assistant Instructions Prompt

Use this after a failed regression case.

```text
Given this failed regression case and the current Custom GPT instructions, suggest the smallest instruction change that would prevent the failure.

Do not expand the assistant scope.
Do not add new method concepts.
Do not weaken claim boundaries.
Keep the instructions under the builder limit.
Return only the proposed patch and the reason for it.
```
