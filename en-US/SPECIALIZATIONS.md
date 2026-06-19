# Specializations in Cybersecurity

🌐 **Language:** **English (en-US)** · [Português (pt-BR)](../pt-BR/ESPECIALIZACOES.md) · [README](README.md)

A map of the main areas, with what the professional does, knowledge, tools, profile, difficulty,
technical depth, demand for programming/networking/OS, roles, portfolio projects, potentially
relevant certifications, trade-offs, and how to start.

> **Note on certifications:** certifications **complement**, they do not replace experience and a
> portfolio. They are cited as a market reference; none is mandatory, and most need not be
> pursued early. Prioritize fundamentals and evidence of real work (see
> [PORTFOLIO-AND-CAREER.md](PORTFOLIO-AND-CAREER.md)).

Demand legend: **L** low · **M** medium · **H** high.

---

## Comparative matrix (summary)

| Area | Prog. | Net | OS | Initial difficulty | Technical depth |
|------|:----:|:--:|:--:|:------------------:|:---------------:|
| Pentest | M | H | H | Medium | High |
| Red Team | H | H | H | High | Very high |
| Purple Team | M | H | H | High | High |
| Blue Team / SOC | M | H | H | Medium | High |
| DFIR | M | H | H | High | Very high |
| Threat Hunting | M | H | H | High | High |
| Detection Engineering | H | H | H | High | High |
| AppSec | H | M | M | High | High |
| Product Security | H | M | M | High | Very high |
| Cloud Security | H | H | M | Medium-High | High |
| Security Engineering | H | H | H | High | High |
| Security Architecture | M | H | H | High | Very high |
| Malware Analysis | H | M | H | Very high | Very high |
| Reverse Engineering | H | L | H | Very high | Very high |
| Vulnerability Research | H | M | H | Very high | Very high |
| Threat Intelligence | M | M | M | Medium | High |
| DevSecOps | H | M | M | Medium-High | High |
| IAM | M | M | M | Medium | High |
| GRC | L | L | L | Low-Medium | Medium |
| Privacy | L | L | L | Medium | Medium |
| Mobile Security | H | M | H | High | High |
| IoT/Hardware Security | H | M | H | Very high | Very high |

Below, the breakdown by area.

---

> **Offensive vs defensive, and ethics.** The offensive areas (Pentest, Red Team, Vulnerability
> Research, Reverse Engineering, Malware Analysis) require **formal authorization, a defined
> scope, and rules of engagement** — practiced only on your own systems, labs, CTFs, or
> explicitly authorized targets ([HANDBOOK Ch. 0](HANDBOOK.md#chapter-0)). They are not "hacking
> for its own sake": their output **feeds defense** — pentest reports drive fixes, red-team TTPs
> become detections, malware analysis yields IOCs/YARA. The defensive areas (Blue Team/SOC, DFIR,
> Threat Hunting, Detection Engineering) consume that output. The strongest professionals
> understand both sides; build a broad base before specializing.

## Pentest

- **What they do:** assess the security of authorized targets, exploit flaws to demonstrate
  impact, deliver reports. (See [HANDBOOK Ch. 17](HANDBOOK.md#chapter-17).)
- **Fundamentals:** networks, web/APIs, AD, Linux/Windows, methodology (PTES, OWASP WSTG).
- **Typical tools:** network/vulnerability scanners, web interception proxies, testing
  frameworks — used on authorized targets.
- **Profile:** curious, methodical, a good communicator (the report is the product).
- **Roles:** pentester, offensive security consultant.
- **Portfolio:** CTF write-ups, authorized lab reports, projects 14 and 20.
- **Relevant certifications:** hands-on/lab-focused pentest certifications (well valued by the
  market).
- **Trade-offs:** consulting can be repetitive; risk of becoming a "scanner operator" without
  fundamentals.
- **How to start:** [Phase 4 of the ROADMAP](ROADMAP.md#phase-4-authorized-offensive-practice);
  platforms that authorize testing.

## Red Team

- **What they do:** emulate adversaries with objectives, testing the organization's detection/
  response. (See [Ch. 18](HANDBOOK.md#chapter-18).)
- **Fundamentals:** pentest + advanced AD + evasion (conceptual) + ATT&CK + OPSEC.
- **Profile:** creative, patient, strong in offensive and defensive fundamentals.
- **Roles:** red teamer, adversary emulation engineer.
- **Portfolio:** documented purple team exercises, TTP emulation in a lab.
- **Trade-offs:** high barrier; requires a solid base and ethical maturity.
- **How to start:** after solid pentest; practice purple team.

## Purple Team

- **What they do:** run red and blue **together** — emulate a TTP and immediately improve
  detection/response. (See [Ch. 18](HANDBOOK.md#chapter-18).)
- **Fundamentals:** ATT&CK, detection engineering, offensive basics, collaboration.
- **Typical tools:** ATT&CK Navigator, Sigma, SIEM/EDR, emulation harnesses (lab).
- **Profile:** collaborative; translates offense ↔ defense.
- **Roles:** purple team engineer, detection-focused red teamer.
- **Portfolio:** documented purple exercises (TTP → telemetry → detection improvement).
- **Trade-offs:** needs both offensive and defensive fluency.
- **How to start:** after pentest + blue-team basics; run the [§18.4 exercise](HANDBOOK.md#chapter-18)
  in a lab.

## Blue Team / SOC

- **What they do:** monitor, detect, and respond to incidents. (See [Ch. 14](HANDBOOK.md#chapter-14).)
- **Fundamentals:** logs, SIEM, EDR, networks, OS, ATT&CK.
- **Roles:** SOC analyst (T1–T3), monitoring engineer.
- **Portfolio:** home SIEM, detections, simulated investigations (projects 11–13).
- **Trade-offs:** shifts; risk of alert fatigue.
- **How to start:** [Phase 3 of the ROADMAP](ROADMAP.md#phase-3-defensive-practice).

## DFIR

- **What they do:** investigate incidents and do forensics while preserving evidence. (See
  [Ch. 16](HANDBOOK.md#chapter-16).)
- **Fundamentals:** OS in depth, artifacts, timelines, chain of custody.
- **Roles:** incident response analyst, digital forensics.
- **Portfolio:** simulated investigation with timeline and report (project 13).
- **Trade-offs:** high pressure during real incidents.
- **How to start:** build the [dfir lab](reader-labs/dfir/) with training images; study [Ch. 16](HANDBOOK.md#chapter-16).

## Threat Hunting

- **What they do:** proactively search for undetected threats, guided by hypotheses.
- **Fundamentals:** ATT&CK, telemetry data, basic statistics, blue team.
- **Roles:** threat hunter.
- **Portfolio:** documented hunts with hypothesis→data→conclusion.
- **How to start:** after blue-team basics, run a hunt ([§14.8](HANDBOOK.md#chapter-14)) on sample logs.

## Detection Engineering

- **What they do:** design, test, version, and measure detections. (See [Ch. 14](HANDBOOK.md#chapter-14).)
- **Fundamentals:** Sigma/YARA, log sources, programming, ATT&CK, testing.
- **Roles:** detection engineer.
- **Portfolio:** a repository of tested, mapped detections (projects 12, 19).
- **How to start:** write and test a Sigma rule ([§14.9](HANDBOOK.md#chapter-14)); keep detections in git.

## AppSec

- **What they do:** application security in the development cycle. (See [Ch. 6](HANDBOOK.md#chapter-6).)
- **Fundamentals:** strong programming, web/APIs, OWASP (Top 10/ASVS), threat modeling.
- **Roles:** AppSec engineer, security champion.
- **Portfolio:** a fixed vulnerable app (project 6), a threat model (project 7).
- **Trade-offs:** requires a good development base.
- **How to start:** fix a vulnerable app ([web-security lab](reader-labs/web-security/)); study [Ch. 6](HANDBOOK.md#chapter-6).

## Product Security

- **What they do:** end-to-end security of a product (design, code, infra, response).
- **Fundamentals:** AppSec + architecture + cloud + communication with engineering.
- **Roles:** product security engineer.
- **Trade-offs:** broad; requires technical and product maturity.
- **How to start:** build AppSec + cloud fundamentals, then threat-model a small product end to end.

## Cloud Security

- **What they do:** protect cloud environments (IAM, configuration, workloads). (See
  [Ch. 11](HANDBOOK.md#chapter-11).)
- **Fundamentals:** one provider in depth, IAM, networks, IaC, containers.
- **Roles:** cloud security engineer.
- **Portfolio:** an architecture review (project 17), IaC with checks.
- **Relevant certifications:** cloud provider certifications (security-associated).
- **How to start:** use one provider's free tier; do the [cloud lab](reader-labs/cloud-security/) and [Ch. 11](HANDBOOK.md#chapter-11).

## Security Engineering

- **What they do:** build and operate security controls and platforms.
- **Fundamentals:** programming, OS, networks, automation, cloud.
- **Roles:** security engineer, platform security.
- **Portfolio:** defensive tools, automations (projects 8–9).
- **How to start:** automate a control; build defensive-tool projects ([scripts](scripts/), [Ch. 13](HANDBOOK.md#chapter-13)).

## Security Architecture

- **What they do:** design secure systems and define standards. (Zero Trust — [Ch. 9/10](HANDBOOK.md#chapter-10).)
- **Fundamentals:** technical breadth + risk + communication.
- **Roles:** security architect.
- **Trade-offs:** less "hands-on"; more decision and influence.
- **How to start:** after broad fundamentals, design and document a small Zero-Trust system ([Ch. 10](HANDBOOK.md#chapter-10)).

## Malware Analysis

- **What they do:** analyze malicious code to extract IOCs/detections. (See [Ch. 23](HANDBOOK.md#chapter-23).)
- **Fundamentals:** OS internals, binary formats, Assembly, sandboxing.
- **Portfolio:** analysis of a **benign**/training sample + YARA (project 15).
- **Trade-offs:** requires a rigorously isolated lab; steep curve.
- **How to start:** analyze a benign/training sample ([malware-analysis lab](reader-labs/malware-analysis/), [Ch. 23](HANDBOOK.md#chapter-23)).

## Reverse Engineering

- **What they do:** understand binaries without source. (See [Ch. 23](HANDBOOK.md#chapter-23).)
- **Fundamentals:** Assembly, C, architecture, disassemblers/debuggers.
- **Trade-offs:** one of the longest curves; high depth.
- **How to start:** learn Assembly + a disassembler; do RE CTF challenges ([Ch. 23](HANDBOOK.md#chapter-23)).

## Vulnerability Research

- **What they do:** discover new vulnerabilities (0-day) ethically/with disclosure.
- **Fundamentals:** RE, memory exploitation, fuzzing, deep OS/compiler knowledge.
- **Portfolio:** CVEs with responsible disclosure (see [career](PORTFOLIO-AND-CAREER.md)).
- **Trade-offs:** very high barrier; years of fundamentals.
- **How to start:** fuzz a toy parser ([§23.6](HANDBOOK.md#chapter-23)); practice coordinated disclosure.

## Threat Intelligence

- **What they do:** produce intelligence about adversaries. (See [Ch. 15](HANDBOOK.md#chapter-15).)
- **Fundamentals:** analysis, ATT&CK, STIX/TAXII, writing, ethical OSINT.
- **Roles:** CTI analyst.
- **Portfolio:** analytic reports with stated confidence.
- **How to start:** map a fictional incident to ATT&CK ([§15.5–15.6](HANDBOOK.md#chapter-15)); write intel notes.

## DevSecOps

- **What they do:** integrate security into CI/CD and operations. (See [Ch. 13](HANDBOOK.md#chapter-13).)
- **Fundamentals:** pipelines, IaC, SAST/SCA/DAST, automation.
- **Portfolio:** a secure pipeline (project 8), an SBOM (project 9).
- **How to start:** build a secure pipeline ([§13.5](HANDBOOK.md#chapter-13), [supply-chain lab](reader-labs/supply-chain/)).

## IAM

- **What they do:** govern identities and access. (See [Ch. 9](HANDBOOK.md#chapter-9).)
- **Fundamentals:** protocols (OAuth/OIDC/SAML), RBAC/ABAC, federation.
- **Roles:** IAM engineer.
- **How to start:** stand up Keycloak; implement OIDC ([§9.7](HANDBOOK.md#chapter-9)).

## GRC

- **What they do:** governance, risk, and compliance. (See [Ch. 25](HANDBOOK.md#chapter-25).)
- **Fundamentals:** frameworks (NIST CSF, ISO 27001, CIS), risk management, communication.
- **Profile:** organized, good at writing and relationships; lower demand for code.
- **Trade-offs:** less technical; high organizational impact.
- **How to start:** build a small risk matrix ([§25.4](HANDBOOK.md#chapter-25)); map controls to a framework.

## Privacy

- **What they do:** protect personal data and compliance (LGPD/GDPR). (See [Ch. 25](HANDBOOK.md#chapter-25).)
- **Fundamentals:** legislation, privacy by design, data flow.
- **Roles:** privacy engineer, DPO (technical support).
- **How to start:** map a data flow and write a mini-DPIA ([§25.5](HANDBOOK.md#chapter-25)).

## Mobile Security

- **What they do:** security of iOS/Android apps. (See [Ch. 24](HANDBOOK.md#chapter-24).)
- **Fundamentals:** mobile platforms, storage, APIs, app RE.
- **How to start:** analyze your own app in an emulator; follow MASVS/MASTG ([Ch. 24](HANDBOOK.md#chapter-24)).

## IoT / Hardware Security

- **What they do:** firmware and device security. (See [Ch. 24](HANDBOOK.md#chapter-24).)
- **Fundamentals:** embedded, UART/JTAG, Secure Boot, RE, basic electronics.
- **Trade-offs:** requires hardware and RE; long curve.

---

- **How to start:** threat-model a device on your bench; follow OWASP IoT ([Ch. 24](HANDBOOK.md#chapter-24)).

## How to choose

1. **Don't choose too early.** Build fundamentals (Phases 1–5) before narrowing down.
2. **Follow your profile:** Like building? Engineering/AppSec/DevSecOps. Investigating?
   DFIR/Threat Hunting/Malware. Breaking (authorized)? Pentest/Red/VulnRes. Organizing and
   communicating? GRC/Privacy/Architecture.
3. **Validate with projects** (see [PORTFOLIO-AND-CAREER.md](PORTFOLIO-AND-CAREER.md)) before
   committing.
4. **Areas overlap:** purple team unites red and blue; cloud cuts across everything. A good
   specialist has a broad base and one deep point ("T-shaped").
