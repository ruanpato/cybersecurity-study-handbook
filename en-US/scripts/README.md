# Scripts

🌐 [Português (pt-BR)](../../pt-BR/scripts/README.md) · [Book README](../README.md)

Space for **your** study utilities: lab automations, report generation, *helpers* for the
projects in [reader-labs/](../reader-labs/). Keep everything **defensive and educational**.

## Rules

- **No operationalizable offensive content:** no malware, payloads, self-replicating code,
  unauthorized-access tooling, or defense evasion (see [HANDBOOK Ch. 0](../HANDBOOK.md#chapter-0)
  and [CONTRIBUTING.md](../CONTRIBUTING.md)).
- **No secrets:** never version credentials, tokens, or keys (see [.gitignore](../../.gitignore)).
- **Document and test:** each script with a short README and, when it makes sense, tests.
- **Secure coding from the start** ([Ch. 3](../HANDBOOK.md#chapter-3)): validate inputs, avoid an
  unnecessary *shell*, handle errors safely.

## Ideas for safe scripts (aligned with the projects)

- Hash-based integrity checker ([Project 2](../reader-labs/programming/)).
- HTTP header parser that flags missing security headers.
- Asset inventory generator for **your own machine**.
- SBOM converter/report ([Project 9](../reader-labs/supply-chain/)).
- Log normalizer for SIEM ingestion ([Project 11](../reader-labs/blue-team/)).
- Configuration validator against a hardening *baseline*.

Suggested organization: one subfolder per language or per project, each with its own README.
