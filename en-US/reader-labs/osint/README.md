# Track: OSINT

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/osint/README.md) · [Labs README](../README.md)

Chapter: [Ch. 19](../../HANDBOOK.md#chapter-19). **Re-read [Chapter 0](../../HANDBOOK.md#chapter-0)
(ethics/privacy/LGPD).** General rules in [../README.md](../README.md#safety-rules-apply-to-all-labs).

> **Non-negotiable limits:** use **only** fictional identities, **lab/own domains**, data provided
> for training, and sources you are permitted to consult. **Forbidden:** harassment, stalking,
> *doxxing*, privacy invasion, or abusive collection of real personal data.

---

## Project 16 — OSINT research with a fictional identity and domain

- **Scenario:** you practice the **OSINT cycle** on a **fictional/own** target, simulating a
  defensive investigation (e.g., the exposure surface of your own test "organization").
- **Objective:** collect, **evaluate sources**, validate, correlate, and **preserve evidence**,
  documenting reliability.
- **Prerequisites:** [Ch. 5](../../HANDBOOK.md#chapter-5), [Ch. 19](../../HANDBOOK.md#chapter-19).
- **Safety rules:** only fictional/own targets; respect the LGPD; nothing about real people's
  data.
- **General steps:**
  1. Define the fictional target (e.g., a domain you control) and the defensive objective.
  2. Gather **conceptual** information: DNS, certificates, public presence, metadata of test
     documents, possible exposures.
  3. Assess the reliability of each source and correlate findings.
  4. Preserve evidence (dated captures, hashes) and conclude with exposure-reduction
     recommendations.
- **Deliverables:** a report with sources, confidence level, correlations, and recommendations.
- **Completion criteria:** you document origin/reliability and articulate where the legal/ethical
  limits would be if the target were real.
- **Reflection questions:** when does collecting "public" data still violate privacy/LGPD? How
  would the result change an organization's defensive posture?
- **Portfolio evidence:** investigative capability + ethical maturity.
- **Extensions:** turn findings into exposure-hardening recommendations; integrate with threat
  intel ([Ch. 15](../../HANDBOOK.md#chapter-15)).
- **What NOT to do:** investigate real people; bypass authentication; aggregate third parties'
  personal data.

## Sample data (synthetic — fictional org exposure)

```text
acme-lab.example -> dev.acme-lab.example (public), status page, 1 public repo (no secrets)
```

Map the public surface with **minimal** collection; record confidence and a recommendation.

## Success rubric

- [ ] Public sources only · [ ] minimal collection · [ ] cross-validated · [ ] privacy respected ·
  [ ] report with confidence.
