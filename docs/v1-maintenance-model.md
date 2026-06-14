# v1 Maintenance Model

Signal Check should remain small, inspectable, and method-first.

## Change types

| Change type | Version impact |
|---|---|
| Typo or wording clarification | patch |
| New example | minor |
| New template field | minor or major depending on compatibility |
| Contract field meaning change | major |
| New optional quality gate | minor |
| Claim-boundary tightening | patch or minor |
| Claim-boundary loosening | not allowed without major review |

## Maintainer stance

Prefer fewer, clearer artifacts over many overlapping artifacts.

When in doubt:
- keep the stricter claim boundary
- keep the smaller example
- require the real anchor
- block synthetic-validation language
