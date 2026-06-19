# Track: Fundamentals

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/fundamentos/README.md) · [Labs README](../README.md)

Chapters: [Ch. 0–2](../../HANDBOOK.md#chapter-1). Follow the
[general safety rules](../README.md#safety-rules-apply-to-all-labs).

---

## Project 1 — Build and document the lab

- **Scenario:** you need an isolated, reproducible, and safe environment for all later studies.
- **Objective:** build the [Chapter 1](../../HANDBOOK.md#chapter-1) topology suited to your
  hardware and document it.
- **Prerequisites:** notions of VM/container ([Ch. 2](../../HANDBOOK.md#chapter-2)); a hypervisor
  installed.
- **Safety rules:** host-only/internal network with no internet for targets; snapshots; no
  personal data in the lab.
- **General steps:**
  1. Choose a hypervisor and define the topology (attacker, target, isolated).
  2. Create at least one attacker VM and one target on an isolated network.
  3. Take "clean" snapshots.
  4. Document the architecture (textual diagram + optional Mermaid) in your repository.
- **Deliverables:** an architecture document, a VM inventory, a snapshot/restore procedure.
- **Completion criteria:** you create and restore snapshots; explain why nothing touches the
  internet; someone else could reproduce your lab from the documentation.
- **Reflection questions:** Why host-only? What changes if your hardware is modest? How would you
  prevent accidental propagation of a test worm?
- **Portfolio evidence:** lab README with a diagram; demonstrates fundamentals and documentation.
- **Extensions:** add a Windows/AD VM and a log collector (prepares the blue-team and red-team
  tracks).
- **What NOT to do:** expose VMs to the internet; use real credentials; install malware samples
  at this stage.

## Success rubric (the lab is set up correctly)

- [ ] Isolated / host-only network · [ ] snapshots taken · [ ] no internet on targets ·
  [ ] topology documented · [ ] clean-state restore tested.
