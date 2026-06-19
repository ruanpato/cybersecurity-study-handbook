# Track: Windows

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/windows/README.md) · [Labs README](../README.md)

Chapter: [Ch. 4](../../HANDBOOK.md#chapter-4). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 5 — Hardening a Windows machine

- **Scenario:** a Windows lab workstation needs secure configuration and adequate *logging* for
  future detection.
- **Objective:** apply hardening and enable security telemetry.
- **Prerequisites:** [Ch. 4](../../HANDBOOK.md#chapter-4); a Windows VM with a snapshot.
- **Safety rules:** your own VM; snapshot first; isolated network.
- **General steps:**
  1. Inventory accounts, services, scheduled tasks, and privileges.
  2. Apply least privilege (separate accounts for administration), updates, password/MFA policy
     where applicable.
  3. Enable advanced *logging* (logon events, PowerShell *Script Block Logging*) and, if
     possible, **Sysmon** with a reference configuration.
  4. Compare against a *baseline* (CIS/Microsoft — see [REFERENCES.md](../../REFERENCES.md)).
- **Deliverables:** before/after checklist; list of enabled log sources.
- **Completion criteria:** you know where the relevant logs live and why Sysmon and PowerShell
  logging help detect abuse (including *living off the land*).
- **Reflection questions:** why is telemetry part of hardening? How do AD/Kerberos change the
  threat model in a corporate network?
- **Portfolio evidence:** demonstrates defense.
- **Extensions:** integrate the workstation into an Active Directory lab (see
  [red-team](../red-team/)) and forward logs to the SIEM (see [blue-team](../blue-team/)).
- **What NOT to do:** run attacks against domains/machines that are not in your lab.

## Sample data (synthetic — events)

```text
4624 Logon user=svc-deploy type=3 src=10.0.0.9
4698 Scheduled task "updater" created by svc-deploy
```

Triage defensively: which artifact corroborates which, and what would you check next?

## Success rubric

- [ ] Key event IDs identified · [ ] artifacts correlated · [ ] fact/indication/hypothesis labeled
  · [ ] findings documented.
