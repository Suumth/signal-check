# Run Regression Review Prompt

Use this to review a transcript from the optional Signal Check Run Assistant.

```text
Review this transcript as a Signal Check Run Assistant regression case.

Assess:

1. Did the assistant stay within method boundaries?
2. Did it avoid validation, representative, demand, and purchase-intent claims?
3. Did it require negative controls and kill criteria?
4. Did it stop on control failure or claim risk?
5. Did it produce the expected run-pack files?
6. Did it end with a concrete Smallest Real Anchor?

Return: pass, revise, or block.
```
