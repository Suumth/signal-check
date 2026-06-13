# Workflow

Signal Check is used manually. There is no CLI, API, Web UI, engine, or model adapter in v0.1.

1. Copy `templates/product-brief.md` into a new folder under `runs/`.
2. Fill the brief, including current alternatives, trust needs, reachability, kill criteria, and a candidate Smallest Real Anchor.
3. Copy `templates/sampling-plan.yaml`.
4. Select segment files from `panels/general/`.
5. Include fitting, adjacent, skeptical, poor-fit, and non-market-control perspectives as needed.
6. Add negative controls from `templates/negative-controls.yaml`.
7. Copy or adapt `templates/prompt-robustness-plan.yaml`.
8. Prepare stimuli with explicit claim boundaries.
9. Run prompts in numeric order from `prompts/`.
10. Save raw responses before interpretation.
11. Classify reactions against anchors with evidence, counter-evidence, and uncertainty.
12. Complete a bias audit.
13. Apply kill criteria.
14. Write a preflight report.
15. Define the Smallest Real Anchor.

Do not reorder the workflow to score first. Open reactions come before classification.

Stop or rerun when:

- negative controls perform as well as the main stimulus
- a non-market control produces false support
- prompt variants change the main finding
- counter-evidence is missing
- the next step remains inside the prompt environment
