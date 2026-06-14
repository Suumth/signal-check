# Run Assistant Versioning

The optional assistant can have its own lightweight version notes without becoming a separate product.

## Version labels

Use simple labels:

```text
assistant-draft
assistant-rc
assistant-stable
```

## When to increment

Increment the assistant note when:

- instructions change
- knowledge files change
- output contract changes
- smoke-test expectations change

## Relationship to Signal Check releases

The assistant may evolve after a Signal Check release candidate. It should not redefine the core method. If assistant behavior conflicts with the repository, the repository wins.
