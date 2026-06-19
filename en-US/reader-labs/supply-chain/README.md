# Track: Supply Chain and DevSecOps

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/supply-chain/README.md) · [Labs README](../README.md)

Chapter: [Ch. 13](../../HANDBOOK.md#chapter-13). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 8 — CI/CD pipeline with security checks

- **Scenario:** you want to "shift security left" in a project of **your own**.
- **Objective:** set up a CI/CD pipeline that runs **SAST**, **SCA**, and **DAST** and fails on
  critical findings.
- **Prerequisites:** [Ch. 6](../../HANDBOOK.md#chapter-6), [Ch. 13](../../HANDBOOK.md#chapter-13);
  a sample repository of your own.
- **Safety rules:** your own repository; secrets out of code; isolated runners.
- **General steps:** configure the pipeline; integrate SAST/SCA/DAST; define *gates*; add *secret
  scanning* and *branch* protection.
- **Deliverables:** a working pipeline + documentation of the *gates*.
- **Completion criteria:** the pipeline detects a planted flaw and blocks the *merge*.
- **Reflection questions:** how to avoid alert fatigue in the pipeline? What to run on a PR vs
  nightly?
- **Portfolio evidence:** development + architecture.

---

## Project 9 — SBOM generation and analysis

- **Objective:** generate an **SBOM** (*Software Bill of Materials*) for a project of yours and
  cross-check it against public vulnerability advisories.
- **Prerequisites:** [Ch. 13](../../HANDBOOK.md#chapter-13); a project with dependencies.
- **General steps:** generate the SBOM from the *lockfile*; list components; identify potentially
  vulnerable dependencies; propose mitigation.
- **Deliverables:** an SBOM + a report of risky components.
- **Completion criteria:** you answer "do I use something affected by flaw X?" based on the SBOM.
- **Reflection questions:** how would *typosquatting* and *dependency confusion* bypass your
  defenses? What would SLSA/Sigstore add?
- **Portfolio evidence:** investigation + defense.

---

## Project 18 — Defensive simulation of a supply chain attack

- **Scenario:** study, in a **defensive and conceptual** way, how a supply chain compromise would
  occur and which controls would contain it.
- **Objective:** model the scenario (without producing a malicious package) and design preventive
  and detective controls.
- **Prerequisites:** Projects 8–9.
- **Safety rules:** a **documentation/defensive exercise**; do not publish malicious packages; do
  not attack public repositories.
- **General steps:** map the build flow; identify injection points (dependencies, runners,
  artifacts); propose controls (reproducible builds, provenance, signing, segregation, review);
  define **detections** (unexpected changes, hashes, missing provenance).
- **Deliverables:** a document with a supply chain threat model + controls + detections.
- **Completion criteria:** you link each injection point to a control and a detection.
- **Reflection questions:** which trusted link would be the hardest to protect? Why?
- **Portfolio evidence:** defense + architecture.
- **What NOT to do (whole track):** publish malicious packages; use names that induce
  *typosquatting* in real repositories; compromise third-party infrastructure.

## Sample data (synthetic — dependency manifest)

```json
{ "dependencies": { "left-pad": "1.3.0", "acme-utils": "0.0.1-internal" } }
```

Spot the dependency-confusion / typosquatting risk and propose a control (pinning, scoped registry).

## Success rubric

- [ ] Risky dependency identified · [ ] SBOM generated (concept) · [ ] control proposed ·
  [ ] pipeline gate described.
