# Track: Web Security

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/web-security/README.md) · [Labs README](../README.md)

Chapter: [Ch. 6](../../HANDBOOK.md#chapter-6). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 6 — Local, deliberately vulnerable web app and its fix

- **Scenario:** to learn how to defend, you first understand how flaws arise — on a **local,
  owned** target.
- **Objective:** use (or write) a **locally, deliberately vulnerable** application, identify
  common vulnerabilities, and most importantly **fix them**.
- **Prerequisites:** [Ch. 6](../../HANDBOOK.md#chapter-6); a local web environment; notions of a
  web language ([Ch. 3](../../HANDBOOK.md#chapter-3)).
- **Safety rules:** **only** on a local/owned application or a training platform that authorizes
  it (e.g., official labs — see [REFERENCES.md](../../REFERENCES.md)). Never against third-party
  sites.
- **General steps:**
  1. Bring up the vulnerable application locally.
  2. Reproduce, in a controlled environment, at least: a **SQLi**, an **XSS**, and an
     **IDOR/BOLA**.
  3. For each: identify the root cause, **fix** it (parameterization, *output encoding*/CSP,
     per-object authorization check), and **re-verify**.
  4. Document before/after.
- **Deliverables:** a write-up with the root cause, fix, and verification of each flaw.
- **Completion criteria:** all three classes are fixed and you explain the prevention of each.
- **Reflection questions:** why is "input validation" alone not enough for XSS? What is the
  difference between authentication and authorization in the flaws you saw?
- **Portfolio evidence:** demonstrates development and defense.
- **Extensions:** add automated security tests; integrate SAST/DAST into the pipeline (see
  [supply-chain](../supply-chain/)); explore SSRF/CSRF/deserialization **on the local target**.
- **What NOT to do:** test any real site; publish the vulnerable app to the internet; turn PoCs
  into attack tools.

## Sample data (synthetic — finding template)

| Field | Value |
|---|---|
| Title | SQLi in `/login` (local lab) |
| Severity | High |
| Evidence | `' OR '1'='1` returns all rows |
| Fix | parameterized queries + least-privilege DB account |

## Success rubric

- [ ] Vulnerability reproduced in the local app · [ ] root cause explained · [ ] fix applied and
  re-tested · [ ] finding documented.
