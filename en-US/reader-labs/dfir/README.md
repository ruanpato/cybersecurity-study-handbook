# Track: DFIR

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/dfir/README.md) · [Labs README](../README.md)

Chapter: [Ch. 16](../../HANDBOOK.md#chapter-16). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 13 — Investigation of a simulated incident

- **Scenario:** an "incident" occurred in your lab (you stage it yourself, or use a training
  dataset) and must be investigated.
- **Objective:** apply the **NIST SP 800-61 Rev. 3** cycle and produce a *timeline* and a report,
  preserving evidence integrity.
- **Prerequisites:** [Ch. 16](../../HANDBOOK.md#chapter-16); lab logs (see
  [blue-team](../blue-team/)) or a training dataset.
- **Safety rules:** use **only** training data or your lab's; **never** real third-party data;
  compute *hashes* to ensure integrity; respect chain of custody.
- **General steps:**
  1. Preparation: define what to collect and in what order (volatility).
  2. Identification/analysis: correlate logs and artifacts.
  3. Build the *timeline*.
  4. Containment/eradication/recovery (in the lab) and lessons learned.
- **Deliverables:** an incident report with a timeline, IOCs, and recommendations; a chain of
  custody record.
- **Completion criteria:** you reconstruct the sequence of events and prove integrity with a
  hash.
- **Reflection questions:** what would you collect first and why (order of volatility)? What would
  you communicate to legal and executive areas?
- **Portfolio evidence:** investigative capability + communication.
- **Extensions:** *network forensics* from a capture in the [networks lab](../networks/);
  analysis of Windows/Linux artifacts.
- **What NOT to do:** handle real personal data; alter original evidence (work on copies).

## Sample data (synthetic — paste into a file to start)

```text
2026-03-10T02:14:07Z host=web01 user=svc-deploy action=login result=success src_asn=AS65000
2026-03-10T02:15:31Z host=web01 user=svc-deploy action=schtask.create name=updater
2026-03-10T02:16:50Z host=web01 proxy=allow dst=newdomain.example interval=60s bytes=512
2026-03-10T02:31:12Z host=db01  user=svc-deploy action=db.read table=customers rows=48211
2026-03-10T03:02:44Z host=cloud action=iam.createAccessKey principal=svc-deploy
```

Build a UTC timeline from these events, label each as fact/inference/hypothesis, and identify the
likely initial access and the pivots. (Synthetic data — not a real incident.)

## Success rubric

- [ ] Timeline in UTC with a confidence column.
- [ ] Fact vs inference vs hypothesis labeled.
- [ ] Evidence integrity shown (a hash of the source file).
- [ ] Report with IOCs + recommendations + an executive summary.
