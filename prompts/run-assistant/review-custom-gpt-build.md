# Review Custom GPT Build

Use this prompt to review a configured Signal Check Run Assistant.

## Prompt

Review the current Custom GPT configuration for the Signal Check Run Assistant.

Check:

- instructions stay under the configured limit
- role is facilitator/operator, not validation oracle
- knowledge files are sufficient and not excessive
- output contract is clear
- negative controls are required
- Smallest Real Anchor is required
- no validation, representative, demand, or testimonial claims appear
- no private or internal data is required

Return:

- `ready`
- `revise`
- `block`

Include concrete fixes for any `revise` or `block` decision.
