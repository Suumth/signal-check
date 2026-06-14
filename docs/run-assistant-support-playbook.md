# Run Assistant Support Playbook

Use this guide when responding to user issues about the optional Run Assistant.

## Common issue: assistant overclaims

Response:

- acknowledge the issue
- identify the exact overclaim
- point to the claim boundaries
- revise instructions or knowledge if needed
- add a regression case

## Common issue: assistant skips negative controls

Response:

- treat as a method failure
- check whether uploaded knowledge includes the rules file
- add or run a regression case
- do not accept the output as ready

## Common issue: assistant creates incomplete run pack

Response:

- compare against the 12-file output contract
- ask for missing files
- treat missing Smallest Real Anchor as blocking

## Common issue: user uploaded private data accidentally

Response:

- do not redistribute the data
- recommend deleting the conversation or file from the user's workspace where possible
- advise re-running with sanitized inputs
