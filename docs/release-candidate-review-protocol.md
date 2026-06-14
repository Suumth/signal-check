# Release Candidate Review Protocol

Use this protocol before releasing v1.0.0.

## Review roles

A single maintainer may perform all roles, but the review must still cover:

1. Method review.
2. Claim-safety review.
3. Example-safety review.
4. Schema/template consistency review.
5. Public onboarding review.

## Review sequence

1. Read README as a new user.
2. Run through one example.
3. Check all v1 templates.
4. Parse all v1 schemas.
5. Search for risky claims.
6. Verify public examples are sanitized.
7. Confirm Smallest Real Anchor is mandatory.
8. Confirm negative controls are mandatory.
9. Fill the v1 readiness assessment.
10. Decide `ready`, `revise`, or `block`.

## Blocking conditions

Block v1 if any of these are true:
- synthetic reactions are framed as real user evidence
- public examples contain private data
- templates allow a run without negative controls
- output can end without a real next test
- README implies market validation
- schemas and templates materially disagree
