# Security and Responsible Disclosure

Signal Check is currently a file-based method kit. It does not include a backend, hosted service, authentication layer, data collection system, model endpoint, or telemetry.

## What to report

Please report:

- Accidental inclusion of private or proprietary data in examples.
- Prompts or docs that encourage unsafe, deceptive, or misleading claims.
- Repository files that expose credentials or sensitive configuration.
- Tooling changes that create unexpected data collection or network behavior.

## What is out of scope

Because Signal Check is not a hosted product, the following are generally out of scope unless future versions add tooling:

- Account takeover reports.
- Web application vulnerabilities.
- API endpoint vulnerabilities.
- Model endpoint abuse reports.

## Responsible method-safety issues

A claim-safety or method-safety issue is welcome. Open an issue using the claim-safety concern template and include:

- The file path.
- The risky wording or pattern.
- Why it could mislead users.
- A safer alternative if possible.
