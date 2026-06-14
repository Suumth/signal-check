# Prompt to File Mapping

Use this mapping when the optional Run Assistant executes or adapts Signal Check prompts.

| Prompt purpose | When to use | Output belongs in | Related lite template |
|---|---|---|---|
| Product brief setup | Start of every run | `01-product-brief.md` | `01-product-brief.lite.md` |
| Sampling plan design | After the brief is specific enough to segment | `02-sampling-plan.yaml` | `02-sampling-plan.lite.yaml` |
| Stimulus authoring | When messages, claims, or concept variants need testing | `03-stimuli.yaml` | `03-stimuli.lite.yaml` |
| Negative-control design | Before synthetic reactions are generated | `04-negative-controls.yaml` | `04-negative-controls.lite.yaml` |
| Prompt robustness planning | Before analysis | `05-prompt-robustness-plan.yaml` | `05-prompt-robustness-plan.lite.yaml` |
| Synthetic directional reactions | During analysis | `06-raw-reactions.md` | `06-raw-reactions.lite.md` |
| Synthesis | After reactions and controls | `07-synthesis.md` | `07-synthesis.lite.md` |
| Bias audit | After synthesis or when reactions look too smooth | `08-bias-audit.yaml` | `08-bias-audit.lite.yaml` |
| Claim-safety review | Before any external sharing | `09-claim-safety-review.md` | `09-claim-safety-review.lite.md` |
| Real-test translation | End of the run | `10-smallest-real-anchor.md` | `10-smallest-real-anchor.lite.md` |
| Run review | Before deciding continue, revise, or stop | `11-run-review.yaml` | `11-run-review.lite.yaml` |
| Run index | Start and end of the run | `12-run-index.md` | `12-run-index.lite.md` |

## Rule

Prompts should create or update files. They should not produce unsupported validation claims.
