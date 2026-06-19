# Track: Blue Team

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/blue-team/README.md) · [Labs README](../README.md)

Chapter: [Ch. 14](../../HANDBOOK.md#chapter-14). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 11 — Log centralization in a local SIEM

- **Scenario:** without visibility there is no detection. You need to centralize the lab's logs.
- **Objective:** bring up a **local SIEM** and ingest logs from the VMs (Linux from
  [Project 4](../linux/) and Windows/Sysmon from [Project 5](../windows/)).
- **Prerequisites:** [Ch. 4](../../HANDBOOK.md#chapter-4), [Ch. 14](../../HANDBOOK.md#chapter-14);
  a built lab.
- **Safety rules:** everything on an isolated network; synthetic/own logs.
- **General steps:** install a local SIEM; configure collection on the VMs; normalize fields;
  validate ingestion; build a basic dashboard.
- **Deliverables:** a working SIEM with documented sources and a dashboard.
- **Completion criteria:** Linux and Windows logs arrive normalized and searchable.
- **Reflection questions:** which sources give the most detection value? What is missing to cover
  ATT&CK?
- **Portfolio evidence:** demonstrates defense. **Extensions:** feed Projects 12 and 19.

---

## Project 12 — Sigma rule creation

- **Scenario:** you want **portable**, versioned detections.
- **Objective:** write **Sigma** rules for suspicious behaviors and test them with sample data.
- **Prerequisites:** Project 11; notions of Sigma and ATT&CK.
- **Safety rules:** use sample/synthetic data.
- **General steps:** choose behaviors (e.g., suspicious service creation, anomalous PowerShell
  use); write the rule; test with sample logs; map to ATT&CK; assess false positives.
- **Deliverables:** a rules repository with tests and mapping.
- **Completion criteria:** the rule triggers on the expected case and you discuss its false
  positives/negatives.
- **Reflection questions:** how to reduce false positives without creating false negatives?
- **Portfolio evidence:** defense + development.

---

## Project 19 — Detection project mapped to MITRE ATT&CK

- **Scenario:** turn detection into **engineering** with measurable coverage.
- **Objective:** build a small detection catalog mapped to ATT&CK, with tests and coverage
  metrics.
- **Prerequisites:** Projects 11–12; ideally, controlled emulation from
  [purple team](../red-team/).
- **General steps:** select ATT&CK techniques relevant to your lab; write/test detections;
  measure coverage; document gaps and an improvement plan.
- **Deliverables:** a coverage matrix + tested detections.
- **Completion criteria:** you demonstrate coverage and gaps with test evidence.
- **Reflection questions:** signature vs behavior detection — where does each fail?
- **Portfolio evidence:** defense + development.
- **What NOT to do (whole track):** use third-party telemetry; treat an alert without context as
  truth.

## Sample data (synthetic)

```text
2026-03-10T09:01Z host=ws07 user=jdoe event=login result=fail count=12 window=2m
2026-03-10T09:02Z host=ws07 user=jdoe event=login result=success src=10.0.0.7
2026-03-10T09:05Z host=ws07 proc=powershell parent=winword.exe cmd="-enc <omitted>"
```

Triage these events (which is suspicious and why?) and draft one detection idea.

## Success rubric

- [ ] Each alert triaged with context · [ ] true/false-positive decided · [ ] detection mapped to
  ATT&CK · [ ] decision documented.
