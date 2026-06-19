# Track: Final Project (integrated)

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/projeto-final/README.md) · [Labs README](../README.md)

Integrates all tracks. **Re-read [Chapter 0](../../HANDBOOK.md#chapter-0).** General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 20 — Authorized attack → detection → response → fix

- **Scenario:** the synthesis project. In an **entirely owned and isolated** lab, you go through
  the full cycle: emulate an **authorized (in your lab)** offensive action, detect it with your
  *blue team*, respond as in an incident, and fix the root cause.
- **Objective:** demonstrate, end to end, the seven portfolio capabilities (see
  [PORTFOLIO-AND-CAREER.md](../../PORTFOLIO-AND-CAREER.md)).
- **Prerequisites:** Projects 1, 4–5, 10–14 (at least). Phases 1–4 of the
  [ROADMAP](../../ROADMAP.md).
- **Safety rules:** everything in an isolated lab; written scope/ROE; no action outside your
  environment; synthetic data; snapshots.
- **General steps:**
  1. **Plan:** define the objective, scope, ROE, and the ATT&CK technique to emulate.
  2. **Offense (authorized, in the lab):** execute the action within scope, collecting evidence.
  3. **Detection:** verify whether your SIEM/detections ([blue-team](../blue-team/)) catch it;
     tune (a **purple team** cycle).
  4. **Response:** apply the NIST 800-61 cycle ([dfir](../dfir/)) — contain, eradicate, recover.
  5. **Fix:** remediate the root cause (hardening, AppSec, IAM) and **re-verify**.
  6. **Communicate:** a technical report + executive summary.
- **Deliverables:** an integrated dossier (planning, evidence, detections, incident report, fixes,
  executive report).
- **Success criteria:** the technique is detected (or the gap is closed), the incident is
  responded to, the root cause is fixed and re-verified, and the communication serves both
  technical and executive audiences.
- **Reflection questions:** where did the defense fail first? Which control would have the highest
  return? What would you do differently?
- **Portfolio evidence:** this is the best calling card for a first job — it demonstrates all
  capabilities in an integrated way.
- **Extensions:** repeat with another ATT&CK technique; measure coverage improvement over time.
- **What NOT to do:** any action outside the lab; use third-party targets/data; publish
  operationalizable offensive artifacts.

## Success rubric (integrated project)

- [ ] Authorized lab only · [ ] offense → detection → response → report cycle · [ ] bilingual
  write-up · [ ] portfolio-ready evidence.
