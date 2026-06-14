# Custom GPT Capability Settings

Recommended settings for the optional Signal Check Run Assistant.

## Data Analysis

Recommended: on.

Reason: Data Analysis can produce a ZIP containing the run-pack files at the end of a guided run.

Boundary: It must only package the user's run artifacts. It must not run hidden research, scrape the web, or infer evidence from outside the conversation.

## Web browsing

Recommended: off by default.

Reason: Signal Check is a preflight method, not a live market research tool. Browsing can be used manually outside the assistant when the user explicitly wants current factual checks.

## Image generation

Recommended: off.

Reason: Signal Check is about product preflight artifacts, not visual generation.

## Canvas

Optional.

Reason: Canvas can help draft and revise documents, but the canonical output remains the run pack files.
