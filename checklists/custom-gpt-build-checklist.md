# Custom GPT Build Checklist

Use before saving the Custom GPT.

## Configuration

- [ ] Name is `Signal Check Run Assistant`
- [ ] Description says it facilitates file-based preflight runs
- [ ] Instructions are copied from `docs/custom-gpt-instructions.md`
- [ ] Data Analysis is enabled
- [ ] Web browsing is off by default
- [ ] Image generation is off
- [ ] Knowledge files are uploaded in the recommended order

## Boundaries

- [ ] It does not claim validation
- [ ] It does not claim representative findings
- [ ] It does not generate testimonials
- [ ] It does not replace real user research
- [ ] It requires negative controls
- [ ] It requires a Smallest Real Anchor

## Output

- [ ] It can output named code blocks
- [ ] It can create a ZIP when Data Analysis is available
- [ ] It creates exactly the expected run-pack files
