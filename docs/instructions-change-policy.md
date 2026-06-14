# Instructions Change Policy

Custom GPT instructions are control logic, not the method itself.

## Keep in instructions

- role
- flow control
- stop conditions
- output rules
- safety boundaries
- knowledge-file references

## Keep out of instructions

- long templates
- full methodology docs
- large examples
- private data
- detailed prompt library content

## Review

Before changing instructions, ask:

- Does this reduce method safety?
- Does this encourage validation claims?
- Does this make the assistant depend on hidden behavior?
- Does this duplicate knowledge files unnecessarily?
