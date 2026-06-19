# Track: Programming

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/programacao/README.md) · [Labs README](../README.md)

Chapter: [Ch. 3](../../HANDBOOK.md#chapter-3). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 2 — Log analyzer in Python

- **Scenario:** you receive log files (e.g., from a local web server) and need to extract useful
  signals.
- **Objective:** write, in Python, an analyzer that parses, aggregates by IP/route/status, and
  highlights simple anomalies (error spikes, many auth failures).
- **Prerequisites:** basic Python, regex, file reading; [Ch. 2–3](../../HANDBOOK.md#chapter-3).
- **Safety rules:** use **sample/synthetic** logs; do not include real personal data; do not send
  data to external services.
- **General steps:** define the log format; write the parser; aggregate metrics; implement simple
  alerting rules; write **tests**; document.
- **Deliverables:** a repository with code, tests, README, and input/output examples.
- **Completion criteria:** it runs over sample logs, has passing tests, and you explain which
  validation prevents which problem.
- **Reflection questions:** how to avoid *ReDoS* in your regex? How to handle malformed input
  safely? What is a false positive here?
- **Portfolio evidence:** demonstrates development and fundamentals.
- **Extensions (without becoming offensive):** configuration validator; hash-based integrity
  checker; HTTP header parser flagging missing security headers; asset inventory of **your own
  machine**; hash analysis tool against an *allowlist*; dependency/SBOM analyzer (see
  [supply-chain](../supply-chain/)).
- **What NOT to do:** turn the detector into an attack tool; collect third-party data; produce any
  unauthorized-access code.

## Sample data (synthetic — test cases for an integrity checker)

```text
ok.txt        -> sha256 matches the recorded value
tampered.txt  -> sha256 differs  (flag it)
```

Write tests for the malicious/edge case, not just the happy path.

## Success rubric

- [ ] Input validated · [ ] malicious/edge cases tested · [ ] errors fail secure · [ ] no secrets
  in code/logs.
