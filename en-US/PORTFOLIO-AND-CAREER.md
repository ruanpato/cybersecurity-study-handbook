# Portfolio and Career

🌐 **Language:** **English (en-US)** · [Português (pt-BR)](../pt-BR/PORTFOLIO-E-CARREIRA.md) · [README](README.md)

How to evolve from student to respected professional and, over time, technical reference. This
document connects the [projects](#the-20-projects) to [ROADMAP.md](ROADMAP.md), the
[specializations](SPECIALIZATIONS.md), and the [six stages in the HANDBOOK](HANDBOOK.md#about-this-book).

> **An honest premise:** technical authority does not come from accumulating courses or
> followers. It comes from **solving real problems, documenting, and sharing ethically** — over
> years. Tools do not replace fundamentals; running commands is not the same as mastery.

---

## 1. What a good portfolio is

A portfolio demonstrates **capabilities**, not just activities. For each project, show: the
problem, the approach, the decisions, the result, the evidence, and what you would learn/do
differently. Seven capabilities a good portfolio evidences:

1. **Fundamentals** (understands the why, not just the how).
2. **Investigative capability** (DFIR, hunting, analysis).
3. **Defensive capability** (detection, hardening, response).
4. **Development capability** (writes clean, tested code).
5. **Documentation capability** (clear, reproducible write-ups).
6. **Architecture capability** (designs solutions, thinks about risk/blast radius).
7. **Communication capability** (technical and executive).

---

## 2. Channels and practices

- **GitHub:** organized repositories, with READMEs, tests, and licenses. Clean history, no
  secrets (see [HANDBOOK Ch. 2](HANDBOOK.md#chapter-2)).
- **Technical reports:** practice the pentest/incident format (see
  [Ch. 17](HANDBOOK.md#chapter-17) and [16](HANDBOOK.md#chapter-16)).
- **Responsible write-ups:** of CTFs and labs — **never** of real systems without authorization;
  respect platform rules and disclosure.
- **Blog/articles:** explaining something teaches you and demonstrates mastery.
- **Talks/meetups and communities:** participate, then contribute.
- **CTFs:** train skill and generate write-ups. Start with introductory challenges.
- **Open source:** contribute defensive tools, detections, documentation.
- **Conferences:** attend, take public notes, then submit proposals.
- **Mentoring and networking:** teaching consolidates; a network opens doors — ethically.
- **Technical English and reading papers:** most cutting-edge knowledge is in English; learn to
  read papers and primary documentation.

---

## 3. Responsible disclosure and CVEs

Finding a real flaw in third-party software is valuable **if** handled ethically (see
[HANDBOOK Ch. 0](HANDBOOK.md#chapter-0)): report privately and in a coordinated way, without
exfiltrating data, without extortion. A CVE with responsible disclosure is a strong signal of
proficiency — but it is a consequence of years of fundamentals, not an early shortcut.

---

## 4. Communication: technical and executive

- **Technical:** precise, reproducible, with evidence.
- **Executive:** translates risk into business impact, without jargon, with prioritized
  recommendations. Knowing both is a rare and well-paid differentiator.

---

## 5. How to avoid looking like "just a tool operator"

- Explain **what** the tool does under the hood (protocol, flaw, mechanism).
- Show that you diagnose when the tool fails.
- Prefer understanding a vulnerability to "running the scanner."
- Document decisions and trade-offs, not just executed commands.

---

## 6. From school to reference (stages)

Re-read [the six stages in the HANDBOOK](HANDBOOK.md#about-this-book). Path summary:

1. Fundamentals + documented labs → **initial portfolio** (stages 1–2).
2. Integrated project + CTFs + first job → **readiness/junior** (stage 3).
3. Real experience + write-ups + specialization → **proficiency** (stage 4).
4. Research, tools, talks, disclosure, mentoring → **specialist/reference** (stages 5–6), over
   **years**.

---

<a id="the-20-projects"></a>

## 7. The 20 hands-on projects (progressive sequence)

Full descriptions (scenario, objectives, prerequisites, safety rules, steps, deliverables,
criteria, evidence, extensions, and "what not to do") are in [reader-labs/](reader-labs/), by
track. Here, the map and the capability each evidences. **No solution is delivered ready-made**
— the implementation is yours.

| # | Project | Track (lab) | Evidences | ROADMAP Phase |
|---|---------|-------------|-----------|:-------------:|
| 1 | Build and document the lab | [fundamentals](reader-labs/fundamentals/) | Fundamentals, documentation | 0 |
| 2 | Log analyzer in Python | [programming](reader-labs/programming/) | Development | 1 |
| 3 | Capture and explain HTTP and TLS | [networks](reader-labs/networks/) | Fundamentals, investigation | 1 |
| 4 | Linux machine hardening | [linux](reader-labs/linux/) | Defense | 1 |
| 5 | Windows machine hardening | [windows](reader-labs/windows/) | Defense | 1 |
| 6 | Local vulnerable web app + fix | [web-security](reader-labs/web-security/) | Development, defense | 2 |
| 7 | Threat model of an application | [appsec](reader-labs/appsec/) | Architecture | 2 |
| 8 | CI/CD pipeline with security checks | [supply-chain](reader-labs/supply-chain/) | Development, architecture | 5 |
| 9 | SBOM generation and analysis | [supply-chain](reader-labs/supply-chain/) | Investigation, defense | 5 |
| 10 | Active Directory lab | [red-team](reader-labs/red-team/) | Fundamentals, defense | 4 |
| 11 | Log centralization in a local SIEM | [blue-team](reader-labs/blue-team/) | Defense | 3 |
| 12 | Sigma rule creation | [blue-team](reader-labs/blue-team/) | Defense, development | 3 |
| 13 | Simulated incident investigation | [dfir](reader-labs/dfir/) | Investigation, communication | 3 |
| 14 | Pentest report (authorized lab) | [red-team](reader-labs/red-team/) | Authorized offense, communication | 4 |
| 15 | Static analysis of a benign file | [malware-analysis](reader-labs/malware-analysis/) | Investigation | 6 |
| 16 | OSINT with fictional identity/domain | [osint](reader-labs/osint/) | Investigation, ethics | 6 |
| 17 | Cloud architecture security review | [cloud-security](reader-labs/cloud-security/) | Architecture, defense | 5 |
| 18 | Defensive supply chain attack simulation | [supply-chain](reader-labs/supply-chain/) | Defense, architecture | 5 |
| 19 | Detection project mapped to ATT&CK | [blue-team](reader-labs/blue-team/) | Defense, development | 6 |
| 20 | Final project: authorized attack → detection → response → fix | [final-project](reader-labs/final-project/) | All | 6 |

**Project 20** is the synthesis portfolio piece: it demonstrates all capabilities in an
integrated scenario and is the best calling card for a first job.

---

## 8. Resume and interviews (general guidance)

- List **results and capabilities**, not just tools.
- Include links to repositories and write-ups.
- In technical interviews, explain **mechanisms** and **decisions**, not just commands.
- Demonstrate ethical maturity: scope, authorization, data handling.

Building reputation is slow and cumulative. Consistency and ethics are worth more than momentary
visibility.
