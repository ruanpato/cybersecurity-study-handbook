# Track: Red Team (authorized offense)

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/red-team/README.md) · [Labs README](../README.md)

Chapters: [Ch. 17–18](../../HANDBOOK.md#chapter-17). **Re-read [Chapter 0](../../HANDBOOK.md#chapter-0)
as a requirement.** General rules in [../README.md](../README.md#safety-rules-apply-to-all-labs).

> **Non-negotiable precondition:** all offensive activity happens **only** in your own, isolated
> lab, or on platforms/ranges that **explicitly authorize** testing on their targets. Never
> against third-party systems.

---

## Project 10 — Active Directory lab

- **Scenario:** corporate networks revolve around AD; you need one to study attack and, above
  all, **defense**.
- **Objective:** build a lab AD (domain controller + workstations) and understand its structure,
  authentication (Kerberos/NTLM), and telemetry.
- **Prerequisites:** [Ch. 4](../../HANDBOOK.md#chapter-4); Windows VMs; an isolated lab.
- **Safety rules:** isolated network, no internet; snapshots; disposable credentials.
- **General steps:** promote a DC; join workstations; create users/groups/GPOs; enable logging
  (logon events, Sysmon) and forward to the SIEM (see [blue-team](../blue-team/)).
- **Deliverables:** documentation of the domain and the log sources.
- **Completion criteria:** you explain domain/forest, Kerberos vs NTLM, and where to observe
  relevant events.
- **Reflection questions:** which events would indicate Kerberos abuse? How does administration
  *tiering* reduce risk?
- **Portfolio evidence:** fundamentals + defense.
- **What NOT to do:** bring operational offensive techniques outside the lab.

---

## Project 14 — Pentest report on an authorized environment

- **Scenario:** you run a test on an **authorized lab target** and must deliver a professional
  report.
- **Objective:** apply the [Ch. 17](../../HANDBOOK.md#chapter-17) methodology (recon→enumeration→
  validation→controlled exploitation→report) and produce technical and executive reports.
- **Prerequisites:** Phases 1–4 of the [ROADMAP](../../ROADMAP.md); an authorized target (your lab
  or a platform that authorizes it).
- **Safety rules:** scope and "rules of engagement" written **beforehand**; stay in scope;
  collect evidence without causing harm beyond the necessary.
- **General steps:** define scope/ROE; reconnaissance and enumeration; validate vulnerabilities;
  controlled exploitation; classify by **CVSS**; write recommendations; plan a retest.
- **Deliverables:** a technical report + executive summary + evidence appendix.
- **Completion criteria:** reproducible findings, justified severity, and actionable
  recommendations; an executive summary understandable by non-technical readers.
- **Reflection questions:** how would you communicate the same finding to an engineer and to a
  director? Where was the biggest business risk?
- **Portfolio evidence:** authorized offense + communication.
- **Extensions:** turn it into a **purple team** cycle with [blue-team](../blue-team/): emulate a
  technique, verify detection, tune.
- **What NOT to do:** go out of scope; test third parties; leak evidence; "run the scanner" and
  call it a pentest.

## Success rubric (purple-team write-up)

- [ ] Written authorization & scope · [ ] TTP mapped to ATT&CK · [ ] expected telemetry ·
  [ ] detection result · [ ] control improvement.
