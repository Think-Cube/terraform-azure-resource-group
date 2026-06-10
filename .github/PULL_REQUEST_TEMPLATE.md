<!-- Pull Request template (Enterprise) -->

### Summary
A short description of the change and the motivation.

### Related issue
Closes/relates to: # (link issue)

### Type of change
- [ ] feat
- [ ] fix
- [ ] docs
- [ ] chore
- [ ] test
- [ ] perf
- [ ] refactor
- [ ] security

### Checklist (required)
- [ ] Title follows Conventional Commits (e.g. `feat(module): add X`).
- [ ] All code contributions are covered by tests where applicable.
- [ ] `terraform fmt -recursive` executed.
- [ ] `terraform init -backend=false` and `terraform validate` executed.
- [ ] `tflint` executed and issues addressed.
- [ ] Documentation and examples updated.
- [ ] CI checks passed (format, validate, tflint, checkov, docs).

### Testing instructions
Describe how to test, include example commands and expected results.

### Security considerations
Describe any security implications or required migration steps. If reporting a vulnerability, follow SECURITY.md.

### Release notes (optional)
Short description to include in changelog/release notes.

### Reviewers
Assign codeowners/reviewers as appropriate.
