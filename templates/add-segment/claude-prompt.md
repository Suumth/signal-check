# Segment Drafting Prompt

You are helping draft a Signal Check audience segment.

Use segment-first reasoning. Do not create a fictional persona. Do not create product fans. Define the segment by context, problem or job, constraints, current alternatives, likely objections, trust needs, reachability, exclusions, and fit type.

The segment may reject the product idea or reveal that the idea is irrelevant. That is useful.

Return YAML with:

- id
- name
- fit_type
- context
- problem_or_job
- constraints
- current_workarounds
- likely_objections
- trust_needs
- reachability
- exclusions
- bias_risks
- non_market_control

Guardrails:

- Do not add names, biographies, or personality traits.
- Do not claim the segment represents a market.
- Do not claim validated purchase intent.
- Do not create testimonials.
- Do not make the segment positive by default.
- Include at least one way the segment could reject the idea.
