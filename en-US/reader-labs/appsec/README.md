# Track: AppSec

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/appsec/README.md) · [Labs README](../README.md)

Chapter: [Ch. 6](../../HANDBOOK.md#chapter-6). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 7 — Threat model of an application

- **Scenario:** before building/evaluating an application, you need to anticipate "what can go
  wrong."
- **Objective:** produce a *threat model* of an application (can be the one from
  [Project 6](../web-security/) or a fictional system).
- **Prerequisites:** [Ch. 6](../../HANDBOOK.md#chapter-6) and [Ch. 10](../../HANDBOOK.md#chapter-10);
  notions of STRIDE.
- **Safety rules:** a documentation activity; no testing against real systems.
- **General steps:**
  1. Draw a data flow diagram (components, trusts, boundaries).
  2. Enumerate threats by **STRIDE** at each boundary.
  3. Map threats to controls (preventive/detective) and to prioritized risks.
  4. Relate, where useful, **MITRE ATT&CK** techniques.
- **Deliverables:** a threat model document with a diagram, a threat list, controls, and
  prioritization.
- **Completion criteria:** you justify prioritization by risk (likelihood × impact) and link
  threats to concrete controls.
- **Reflection questions:** which threats did you accept (residual risk) and why? Where is the
  largest *blast radius*?
- **Portfolio evidence:** demonstrates architecture and risk reasoning.
- **Extensions:** revise the threat model after architecture changes; use ASVS to derive
  verifiable requirements.
- **What NOT to do:** mistake a list of generic vulnerabilities for system-specific modeling.

## Sample data (synthetic — STRIDE row)

| STRIDE | Threat | Mitigation |
|---|---|---|
| Elevation of privilege | a normal user reaches admin actions | deny-by-default, per-action authz |

Extend the model with at least one threat per STRIDE category for a small app.

## Success rubric

- [ ] Data flow drawn · [ ] one threat per STRIDE category · [ ] each with a mitigation ·
  [ ] tracked as requirements/tests.
