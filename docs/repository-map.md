# Repository Map — v1 Candidate

This map describes the intended v1 repository organization.

```text
signal-check/
  README.md
  LICENSE
  CONTRIBUTING.md
  docs/
  contracts/
    v1/
  templates/
    v1/
  schemas/
    v1/
  prompts/
    v1/
  panels/
  examples/
  checklists/
  quality-gates/
  tools/
    quality/
```

## Folder roles

| Folder | Role |
|---|---|
| `docs/` | Method explanation and public guidance |
| `contracts/v1/` | Stable artifact definitions |
| `templates/v1/` | Blank run artifacts |
| `schemas/v1/` | Machine-checkable structure |
| `prompts/v1/` | Prompt artifacts for manual runs |
| `panels/` | Starter segment and perspective sets |
| `examples/` | Public-safe examples |
| `checklists/` | Human review gates |
| `quality-gates/` | Optional validation conventions |
| `tools/quality/` | Maintainer-only local checks, if present |

## Stability rule

For v1, contracts should change slower than templates. Templates may gain clarifying text, but contract field meanings should remain stable unless a new version is introduced.
