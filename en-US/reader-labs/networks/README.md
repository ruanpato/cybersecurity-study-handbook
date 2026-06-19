# Track: Networks

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/redes/README.md) · [Labs README](../README.md)

Chapter: [Ch. 5](../../HANDBOOK.md#chapter-5). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 3 — Capture and explain HTTP and TLS

- **Scenario:** you want to understand, at the packet level, what happens when you visit a site.
- **Objective:** capture an **HTTP** and an **HTTPS** (TLS) browse on **your own machine/lab** and
  explain each step.
- **Prerequisites:** [Ch. 5](../../HANDBOOK.md#chapter-5); a packet analyzer.
- **Safety rules:** capture **only** your own/lab traffic. Do not capture traffic from
  third-party networks or people.
- **General steps:**
  1. Capture a simple HTTP request (e.g., to a local server).
  2. Identify the TCP *three-way handshake*.
  3. Capture an HTTPS connection and identify the TLS *handshake*.
  4. Compare: what is visible in HTTP vs HTTPS (and what is still visible in HTTPS, such as SNI,
     IPs, and sizes).
- **Deliverables:** a write-up with commented (sanitized) captures and a handshake diagram.
- **Completion criteria:** you explain the TCP handshake, what TLS protects/does not protect, and
  identify an associated DNS query.
- **Reflection questions:** why doesn't TLS hide everything? How does a reverse proxy change the
  scenario? What would change with HTTP/2 or HTTP/3?
- **Portfolio evidence:** demonstrates fundamentals and investigative capability.
- **Extensions:** analyze a DNS resolution; observe the difference between an insecure protocol
  (e.g., local Telnet) and its secure equivalent (SSH).
- **What NOT to do:** sniff others' networks; man-in-the-middle attacks outside your lab.

## Sample data (synthetic)

| Time | Src | Dst | Proto | Note |
|---|---|---|---|---|
| 00:01 | host | dns | DNS | `A? cdn-updates.example` |
| 02:16 | host | newdomain.example | TLS | small, periodic (~60 s) |

Form a hypothesis (benign poller vs beaconing) and list what you would check next.

## Success rubric

- [ ] Baseline vs anomaly stated · [ ] hypothesis with evidence · [ ] next investigative steps ·
  [ ] defensive-only conclusion.
