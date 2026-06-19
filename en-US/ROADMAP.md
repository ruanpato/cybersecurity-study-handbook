# Progressive Study Roadmap

🌐 **Language:** **English (en-US)** · [Português (pt-BR)](../pt-BR/ROADMAP.md) · [README](README.md)

A phased track, from zero to specialization. Each phase indicates approximate duration, weekly
hours, prerequisites, content, labs/projects, deliverables, completion criteria, related roles,
common mistakes, and when to review. Use together with [HANDBOOK.md](HANDBOOK.md) and
[PROGRESS-CHECKLIST.md](PROGRESS-CHECKLIST.md).

> **Realistic expectation.** Durations assume someone in an undergraduate program, studying
> alongside coursework, with ~8–12 h/week dedicated. There is no shortcut to deep
> specialization (see [the six stages in the HANDBOOK](HANDBOOK.md#about-this-book)). The numbers
> are orders of magnitude, not promises.

---

## Phase overview

| Phase | Focus | Typical duration |
|------|-------|------------------|
| 0 | Preparation and ethics | 2–4 weeks |
| 1 | Computing fundamentals | 4–8 months |
| 2 | Security fundamentals | 3–5 months |
| 3 | Defensive practice | 4–6 months |
| 4 | Authorized offensive practice | 4–6 months |
| 5 | Security engineering | 4–6 months |
| 6 | Specialization | 12+ months (ongoing) |
| 7 | Building technical authority | ongoing, for years |

Phases overlap in practice (you review fundamentals while advancing). The order is pedagogical,
not rigid.

---

## Phase 0 — Preparation and ethics

- **Duration:** 2–4 weeks · **Load:** ~6–10 h/week.
- **Prerequisites:** none.
- **Content:** [Chapter 0](HANDBOOK.md#chapter-0) (ethics, legality, authorization, responsible
  disclosure), scientific method/documentation, [Git](HANDBOOK.md#chapter-2), and building the
  [safe lab (Ch. 1)](HANDBOOK.md#chapter-1).
- **Labs/projects:** Project 1 — build and document the lab
  ([reader-labs/fundamentals/](reader-labs/fundamentals/)).
- **Deliverables:** a working lab with snapshots; a Git study repository; a "personal rules of
  engagement" document.
- **Completion criterion:** you create/restore snapshots, version in Git without leaking
  secrets, and explain authorization and coordinated disclosure.
- **Related roles:** (pre-professional).
- **Common mistakes:** skipping ethics; exposing vulnerable VMs to the internet; not
  documenting.
- **When to review:** whenever starting any offensive activity.

## Phase 1 — Computing fundamentals

- **Duration:** 4–8 months · **Load:** ~10 h/week.
- **Prerequisites:** Phase 0.
- **Content:** [Ch. 2](HANDBOOK.md#chapter-2) (CS), [Ch. 3](HANDBOOK.md#chapter-3) (programming:
  Python+Bash first), [Ch. 4](HANDBOOK.md#chapter-4) (Linux and Windows),
  [Ch. 5](HANDBOOK.md#chapter-5) (networks), [Ch. 7](HANDBOOK.md#chapter-7) (databases),
  [Ch. 6](HANDBOOK.md#chapter-6) (web fundamentals).
- **Labs/projects:** Projects 2 (log analyzer), 3 (HTTP/TLS capture), 4 (Linux hardening),
  5 (Windows hardening).
- **Deliverables:** scripts on GitHub with README and tests; commented captures; filled
  hardening checklists.
- **Completion criterion:** you read a packet, write a log parser, do basic Linux/Windows
  hardening, and model database permissions.
- **Related roles:** IT/infra internship, support, junior operations.
- **Common mistakes:** rushing to "hacking" without a networking/OS base; memorizing commands
  without understanding.
- **When to review:** continuously; fundamentals support everything else.

> **Note for the absolute beginner (audit AUD-009):** if you are starting programming from
> scratch, treat 6–8 months as the realistic floor for Phase 1, and consider splitting it
> (programming + OS first; networks + web + databases next).

## Phase 2 — Security fundamentals

- **Duration:** 3–5 months · **Load:** ~10 h/week.
- **Prerequisites:** Phase 1.
- **Content:** [Ch. 8](HANDBOOK.md#chapter-8) (cryptography), [Ch. 9](HANDBOOK.md#chapter-9)
  (IAM), [Ch. 10](HANDBOOK.md#chapter-10) (fundamentals: risk, ATT&CK, kill chain), threat
  modeling, logging, vulnerability management.
- **Labs/projects:** Project 6 (local vulnerable web app + fix), Project 7 (threat model of an
  application).
- **Deliverables:** a fix report; a threat model document (STRIDE).
- **Completion criterion:** you classify risk, model threats, and fix common web flaws
  explaining the root cause.
- **Related roles:** junior security analyst, junior GRC.
- **Common mistakes:** treating cryptography as "math-magic"; ignoring authorization in web
  labs.
- **When to review:** before Phases 3 and 4.

<a id="phase-3-defensive-practice"></a>

## Phase 3 — Defensive practice

- **Duration:** 4–6 months · **Load:** ~10–12 h/week.
- **Prerequisites:** Phases 1–2.
- **Content:** [Ch. 14](HANDBOOK.md#chapter-14) (blue team, SIEM, detection engineering),
  [Ch. 16](HANDBOOK.md#chapter-16) (DFIR), [Ch. 15](HANDBOOK.md#chapter-15) (threat intel),
  threat hunting, incident response.
- **Labs/projects:** Projects 11 (local SIEM), 12 (Sigma rules), 13 (simulated incident
  investigation).
- **Deliverables:** versioned and tested detection rules; an incident report with a timeline.
- **Completion criterion:** you ingest logs into a SIEM, write detections mapped to ATT&CK, and
  investigate a simulated incident while preserving evidence.
- **Related roles:** SOC analyst (T1/T2), junior detection analyst, junior DFIR.
- **Common mistakes:** focusing on the tool and not the log source; untested detections.
- **When to review:** after Phase 4 (purple team connects the two).

<a id="phase-4-authorized-offensive-practice"></a>

## Phase 4 — Authorized offensive practice

- **Duration:** 4–6 months · **Load:** ~10–12 h/week.
- **Prerequisites:** Phases 1–3 and [Ch. 0](HANDBOOK.md#chapter-0) (mandatory).
- **Content:** [Ch. 17](HANDBOOK.md#chapter-17) (pentest methodology),
  [Ch. 6](HANDBOOK.md#chapter-6) (web/APIs), networks, **Active Directory**
  ([Ch. 4](HANDBOOK.md#chapter-4)), cloud ([Ch. 11](HANDBOOK.md#chapter-11)), reports.
- **Labs/projects:** Project 10 (AD lab), Project 14 (pentest report on an **authorized** lab
  environment), practice on platforms that authorize testing.
- **Deliverables:** technical and executive reports; responsible CTF write-ups.
- **Completion criterion:** you run recon→enumeration→validation on an authorized target,
  classify by CVSS, and deliver a professional report.
- **Related roles:** junior pentester, junior AppSec analyst, beginner bug bounty.
- **Common mistakes:** going out of scope; mistaking "I ran the scanner" for a pentest; a weak
  report.
- **When to review:** continuously, with purple team (Phase 6).

## Phase 5 — Security engineering

- **Duration:** 4–6 months · **Load:** ~10–12 h/week.
- **Prerequisites:** Phases 1–4.
- **Content:** [Ch. 6](HANDBOOK.md#chapter-6) (AppSec), [Ch. 11](HANDBOOK.md#chapter-11)
  (CloudSec), [Ch. 12](HANDBOOK.md#chapter-12) (containers/k8s),
  [Ch. 13](HANDBOOK.md#chapter-13) (DevSecOps and supply chain), architecture and
  [Zero Trust (Ch. 9/10)](HANDBOOK.md#chapter-9).
- **Labs/projects:** Projects 8 (CI/CD with security checks), 9 (SBOM), 17 (cloud architecture
  review), 18 (defensive simulation of a supply chain attack).
- **Deliverables:** a pipeline with SAST/SCA/DAST; an analyzed SBOM; a secure-architecture
  document.
- **Completion criterion:** you integrate security into a pipeline, generate/analyze an SBOM,
  and review a cloud architecture pointing out risks.
- **Related roles:** security engineer, AppSec engineer, cloud security engineer, DevSecOps.
- **Common mistakes:** security "at the end" of the pipeline; ignoring identity/IAM.
- **When to review:** when choosing a specialization (Phase 6).

## Phase 6 — Specialization

- **Duration:** 12+ months, ongoing · **Load:** variable.
- **Prerequisites:** Phases 1–5 (solid at least).
- **Content:** choose a track in [SPECIALIZATIONS.md](SPECIALIZATIONS.md) — red team, blue team,
  AppSec, cloud security, DFIR, malware/RE, threat intel, detection engineering, security/
  product engineering, vulnerability research, GRC, privacy, mobile/IoT.
- **Labs/projects:** Projects 15 (benign static analysis), 16 (fictional OSINT), 19 (detection
  mapped to ATT&CK), plus track-specific projects.
- **Deliverables:** a deep portfolio in one area; open-source contributions; write-ups.
- **Completion criterion:** you solve non-trivial problems in a subarea and produce content
  others consult.
- **Related roles:** specialist/mid-level in the chosen track.
- **Common mistakes:** scattering (wanting to be everything); collecting certifications without
  practice.
- **When to review:** revisit fundamentals when you find gaps — they reappear.

## Phase 7 — Building technical authority

- **Duration:** ongoing, for years · **Load:** integrated into work.
- **Prerequisites:** proficiency (stage 4+).
- **Content:** writing (articles, papers, write-ups), talks, open source, **responsible
  disclosure** and CVEs, communities, mentoring, tool building, case studies, and executive
  communication. Details in [PORTFOLIO-AND-CAREER.md](PORTFOLIO-AND-CAREER.md).
- **Deliverables:** a public, verifiable body of work; reputation.
- **Completion criterion:** (there is no "end" — this is the reference stage).
- **Common mistakes:** mistaking social-media presence for technical authority; neglecting
  ethics.

---

<a id="suggested-plans-by-horizon"></a>

## Suggested plans by horizon

### 12-month plan (solid base + first practice)

- Month 1: Phase 0.
- Months 2–7: Phase 1 (fundamentals), with Projects 1–5.
- Months 8–10: Phase 2 (security fundamentals), Projects 6–7.
- Months 11–12: start of Phase 3 (defensive), Project 11 (SIEM).
- **Expected stage at the end:** between 1 and 2 (introductory → practical competence). Ready
  for an internship/junior role in operations/support with a security slant.

### 24-month plan (readiness for a first security job)

- Continuation of year 1.
- Months 13–18: finish Phase 3 and do Phase 4 (authorized offense), Projects 10, 12–14.
- Months 19–24: Phase 5 (security engineering), Projects 8–9, 17–18; start choosing a track.
- **Expected stage:** 2→3 (readiness for a first job). A portfolio with defense + offense +
  engineering.

### 36-month plan (initial specialization)

- Years 1–2 as above.
- Months 25–36: Phase 6 in a chosen track; Projects 15, 16, 19 and specific ones; Project 20
  (final integrated: authorized attack → detection → response → fix). Begin Phase 7 (write-ups,
  community, open source).
- **Expected stage:** 3→4 (initial proficiency in a subarea). Working professionally and going
  deeper.

### Continuous development (after 36 months)

Deep specialization (stages 5–6) takes **additional years**: deliberate practice, research,
writing, responsible disclosure, mentoring, and community contribution. Reassess goals every
6–12 months (see periodic assessments in
[PROGRESS-CHECKLIST.md](PROGRESS-CHECKLIST.md)).

---

## Consistency with the other documents

- The **chapters** cited exist in [HANDBOOK.md](HANDBOOK.md).
- The **numbered projects (1–20)** are described in [reader-labs/](reader-labs/) and summarized
  in [PORTFOLIO-AND-CAREER.md](PORTFOLIO-AND-CAREER.md).
- The **mastery levels** and **periodic assessments** are in
  [PROGRESS-CHECKLIST.md](PROGRESS-CHECKLIST.md).
