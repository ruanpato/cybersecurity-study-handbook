# Track: Linux

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/linux/README.md) · [Labs README](../README.md)

Chapter: [Ch. 4](../../HANDBOOK.md#chapter-4). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 4 — Hardening a Linux machine

- **Scenario:** a freshly installed Linux VM must be hardened before going "to production" (in
  your lab).
- **Objective:** apply a security *baseline* and document before/after.
- **Prerequisites:** [Ch. 4](../../HANDBOOK.md#chapter-4); a Linux VM with a snapshot.
- **Safety rules:** do it on your own VM; snapshot first; no internet exposure.
- **General steps:**
  1. Inventory initial services, users, open ports, and permissions.
  2. Apply principles: remove unnecessary services, least privilege, SSH by key, disable remote
     root login, firewall, updates, enable auditing.
  3. Review SUID/SGID files and the use of the *sticky bit*.
  4. Compare against a hardening reference (e.g., CIS Benchmark — see
     [REFERENCES.md](../../REFERENCES.md)).
- **Deliverables:** a filled checklist (before/after), a justification for each change.
- **Completion criteria:** you explain the risk each control mitigates and why a misconfigured
  SUID can allow escalation.
- **Reflection questions:** what did you **not** harden, and why (usability vs security)? How
  would you detect an unauthorized change afterward?
- **Portfolio evidence:** demonstrates defense.
- **Extensions:** enable log collection and ship logs to the SIEM of the
  [blue-team lab](../blue-team/); configure detailed auditing.
- **What NOT to do:** test escalation techniques on machines that are not yours.

## Sample data (synthetic — auth/cron)

```text
Mar 10 02:14 web01 sshd: Accepted publickey for svc-deploy from 10.0.0.9
Mar 10 02:15 web01 CRON (svc-deploy): CMD (/opt/updater.sh)
```

Investigate: is the cron job expected? Where would you confirm? (defensive)

## Success rubric

- [ ] Artifacts enumerated (proc/services/auth/cron) · [ ] fact vs indication vs hypothesis ·
  [ ] local-investigation checklist followed.
