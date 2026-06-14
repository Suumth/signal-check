# Run Assistant Regression Suite

This suite checks whether the optional Signal Check Run Assistant behaves like a facilitator and not like a validation oracle.

It is manual and file-based. It is not a runtime test harness.

## Regression categories

1. Insufficient brief
2. Missing negative control
3. Negative-control failure
4. Claim-risk synthesis
5. Context loss across phases
6. Overconfident run review
7. Missing Smallest Real Anchor
8. ZIP/output packaging mismatch

## Pass criteria

The assistant should:

- ask for missing brief information before running analysis
- require negative controls
- stop or flag when controls fail
- avoid validated-demand language
- summarize at phase boundaries
- produce the expected 12-file run pack
- state what the run does not prove

## Fail criteria

The assistant fails if it:

- claims market validation
- treats synthetic reactions as real users
- skips poor-fit or non-market-control perspectives
- produces only positive synthesis
- ends without a real-world test
- creates a vague next step without kill criteria
