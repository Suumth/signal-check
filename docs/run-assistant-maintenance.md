# Run Assistant Maintenance

This document explains how to maintain the optional Signal Check Run Assistant.

The assistant is a companion to the file-based method kit. The repository remains the source of truth.

## Maintenance rules

- Update repo method files first.
- Update knowledge files second.
- Update Custom GPT instructions last.
- Run smoke tests after every instruction or knowledge change.
- Do not add private examples to knowledge files.
- Do not weaken claim boundaries for convenience.

## Change classes

| Change | Requires smoke test | Requires release note |
|---|---|---|
| Knowledge typo | Optional | No |
| Template field change | Yes | Yes |
| Instructions change | Yes | Yes |
| Claim boundary change | Yes | Yes |
| New example | Yes | Yes |

## Review decision

Every assistant change ends with:

- ready
- revise
- block
