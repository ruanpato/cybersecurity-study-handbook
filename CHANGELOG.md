# Changelog

All notable changes to this project are documented here.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- **Chapter 26 — AI, ML, and LLM security** (OWASP LLM Top 10 2025, indirect prompt injection,
  MLSecOps, MITRE ATLAS, NIST AI RMF).
- **Post-quantum cryptography** (§8.8): harvest-now-decrypt-later, Shor/Grover, NIST FIPS
  203/204/205, crypto-agility and hybrid migration.
- **Modern detection** (§14.6): eBPF (Falco/Tetragon/Cilium), rich telemetry, detection-as-code.
- Worked **STRIDE** example (§2.13) and worked **XSS** example (§6.6).
- **Sessions, tokens, and JWT pitfalls** (§9.6).
- **Appendix D** — representative professional tools per area (concept-first, authorized use).
- References for AI security, post-quantum, and modern detection (all accessed and verified).

### Changed

- Toolchain updated to latest: Node 24 LTS; cspell 10, commitlint 21, markdownlint-cli2 0.22.
- CI lint runs via `npm` (single source of truth with the local hooks).
- Site gains a header language selector (`extra.alternate`).

## [0.2.0] - 2026-06-18

### Added

- Initial public release: bilingual (en-US / pt-BR) introductory cybersecurity
  handbook, study roadmap, specializations map, reader labs, portfolio and career
  guide, glossary, progress checklist, and externally verified references.
- Dual licensing: content under CC BY 4.0 (`LICENSE`), code under MIT (`LICENSE-CODE`).
- Governance: `SECURITY.md`, `CODE_OF_CONDUCT.md`, root and per-language `CONTRIBUTING`,
  and issue / pull-request templates.
- Tooling: Conventional Commits via commitlint + husky; MkDocs Material site
  auto-deployed to GitHub Pages by an Actions workflow.

[Unreleased]: https://github.com/ruanpato/cybersecurity-study-handbook/compare/v0.2...HEAD
[0.2.0]: https://github.com/ruanpato/cybersecurity-study-handbook/releases/tag/v0.2
