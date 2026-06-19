# Reader Labs

🌐 **Language:** **English (en-US)** · [Português (pt-BR)](../../pt-BR/labs-do-leitor/README.md) · [Book README](../README.md)

This folder contains the **labs and projects you must implement**. Here you will find scenarios,
objectives, prerequisites, safety rules, completion criteria, reflection questions, and portfolio
evidence suggestions — **not** ready-made solutions. The implementation, the code, and the
reports are your work (and your portfolio).

## How to use

1. Read the corresponding chapter in [HANDBOOK.md](../HANDBOOK.md) before starting.
2. Use [LAB-TEMPLATE.md](LAB-TEMPLATE.md) to document each lab.
3. Respect **all** safety rules and [Chapter 0](../HANDBOOK.md#chapter-0)
   (ethics/authorization).
4. When done, record the evidence in [PROGRESS-CHECKLIST.md](../PROGRESS-CHECKLIST.md).

## Lab scaffolding and sample data

These are **guided briefings with scaffolding**, not solutions. Each lab gives you a standard
structure to work from; **you** implement, investigate, test, and document.

**Standard fields (see [LAB-TEMPLATE.md](LAB-TEMPLATE.md)):** objective · prerequisites ·
safe/authorized environment · suggested setup · high-level steps · your tasks · expected
deliverable · success criteria · safety criteria · optional extension · how to document it for
your portfolio · what **not** to do · links to the chapter / roadmap / career.

**Sample data.** Where useful, a lab provides **small, synthetic, text-based** data you can paste
into files — never real data. Example (a synthetic auth/EDR log for a blue-team or DFIR lab):

```text
2026-03-10T02:14:07Z host=web01 user=svc-deploy action=login    result=success src_asn=AS65000
2026-03-10T02:15:31Z host=web01 user=svc-deploy action=schtask  name=updater
2026-03-10T02:16:50Z host=web01 proxy=allow dst=cdn-updates.example interval=60s bytes=512
```

Keep any data you add **small and reviewable**; never commit secrets or real evidence.

<a id="safety-rules-apply-to-all-labs"></a>

## Safety rules (apply to all labs)

- Work **only** on machines you own, an isolated lab, CTFs/platforms that authorize testing, or
  environments with **formal authorization**.
- **Never** expose vulnerable machines to the internet.
- **Never** download real malware samples here; use only **benign** or training files, on an
  isolated network.
- Do not store secrets, personal data, or real evidence in the repository.
- Use snapshots; restore the clean state after experiments.

## Tracks (one folder per theme)

| Track | Related projects | Chapter |
|-------|------------------|---------|
| [fundamentals/](fundamentals/) | 1 | [Ch. 1–2](../HANDBOOK.md#chapter-1) |
| [programming/](programming/) | 2 | [Ch. 3](../HANDBOOK.md#chapter-3) |
| [networks/](networks/) | 3 | [Ch. 5](../HANDBOOK.md#chapter-5) |
| [linux/](linux/) | 4 | [Ch. 4](../HANDBOOK.md#chapter-4) |
| [windows/](windows/) | 5 | [Ch. 4](../HANDBOOK.md#chapter-4) |
| [web-security/](web-security/) | 6 | [Ch. 6](../HANDBOOK.md#chapter-6) |
| [appsec/](appsec/) | 7 | [Ch. 6](../HANDBOOK.md#chapter-6) |
| [cloud-security/](cloud-security/) | 17 | [Ch. 11](../HANDBOOK.md#chapter-11) |
| [blue-team/](blue-team/) | 11, 12, 19 | [Ch. 14](../HANDBOOK.md#chapter-14) |
| [red-team/](red-team/) | 10, 14 | [Ch. 17–18](../HANDBOOK.md#chapter-17) |
| [dfir/](dfir/) | 13 | [Ch. 16](../HANDBOOK.md#chapter-16) |
| [osint/](osint/) | 16 | [Ch. 19](../HANDBOOK.md#chapter-19) |
| [malware-analysis/](malware-analysis/) | 15 | [Ch. 21–23](../HANDBOOK.md#chapter-21) |
| [supply-chain/](supply-chain/) | 8, 9, 18 | [Ch. 13](../HANDBOOK.md#chapter-13) |
| [final-project/](final-project/) | 20 | integrated |

Full map of the 20 projects in
[PORTFOLIO-AND-CAREER.md](../PORTFOLIO-AND-CAREER.md#the-20-projects).

> The subfolders contain a README with the lab(s) and a `.gitkeep` to preserve the empty
> structure until you add your own artifacts.
