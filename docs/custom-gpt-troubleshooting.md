# Custom GPT Troubleshooting

Common failure modes for the optional Signal Check Run Assistant.

## The assistant gives big strategic advice instead of files

Correction:

- remind it to produce run-pack files
- ask for one phase at a time
- request named file blocks

## The assistant sounds too positive

Correction:

- ask it to re-run the synthesis with skeptical and poor-fit perspectives
- require counter-evidence
- run the claim safety review

## The assistant invents user quotes

Correction:

- reject the output
- remind it: do not create synthetic testimonials
- ask for paraphrased synthetic reactions only

## The assistant skips the Smallest Real Anchor

Correction:

- stop the run
- ask it to translate the synthesis into one real next test
- require kill criteria and an observable signal

## The assistant loses context over a long run

Correction:

- use the phase summary as a restart prompt
- paste the latest run index
- continue from the next phase

## The assistant creates invalid YAML

Correction:

- ask it to regenerate only the invalid file
- keep strings quoted when they contain colons
- run the YAML parser before committing
