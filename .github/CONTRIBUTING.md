# Contributing (Enterprise)

Thank you for contributing. This document defines the contribution workflow, quality gates and expectations for enterprise-grade modules.

1. Code of Conduct
- All contributors must follow CODE_OF_CONDUCT.md.

2. Development workflow
- Fork the repository and open feature branches named using Conventional Commits and scope, e.g. `feat(module): add logging` or `fix(terraform): correct resource name`.
- Open pull requests against `main`.

3. Commit messages
- Use Conventional Commits (https://www.conventionalcommits.org) to allow automated changelogs and semantic releases.

4. Before opening a PR
- Run `terraform fmt -recursive`.
- Run `terraform init -backend=false` and `terraform validate`.
- Run `tflint` and fix reported issues.
- Run unit/integration tests for examples if available.
- Update documentation (README, examples) and run `terraform-docs` locally or rely on CI.

5. Pull Request requirements
- Use semantic PR title: `<type>(<scope>): short description` (e.g., `fix(module-azurerg): correct subnet count`).
- Include a clear description, linked issue, and test plan.
- Add the appropriate labels (bug, enhancement, docs, security).
- Ensure at least one codeowner reviews the PR.
- CI must pass (format, validate, tflint, checkov, docs generation).

6. Testing & Examples
- Keep examples in `/examples/` and ensure they are runnable and minimal.
- Add tests for critical workflows and validate example outputs.

7. Release and Versioning
- Module versions follow Semantic Versioning. Releases are automated via release-please and require a changelog generated from Conventional Commit messages.

8. Security and Sensitive Data
- Do not commit secrets. Use GitHub Secrets for CI.
- Report security issues per SECURITY.md.

9. Support and SLA
- Critical/security issues: acknowledged within 72 hours; critical fixes aim for a 7-day remediation window for supported versions.

If uncertain, open an issue describing the proposed change and tag with `design` to start a discussion.