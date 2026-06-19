# Track: Cloud Security

🌐 [Português (pt-BR)](../../../pt-BR/labs-do-leitor/cloud-security/README.md) · [Labs README](../README.md)

Chapter: [Ch. 11](../../HANDBOOK.md#chapter-11). General rules in
[../README.md](../README.md#safety-rules-apply-to-all-labs).

---

## Project 17 — Cloud architecture security review

- **Scenario:** you need to assess the security posture of a cloud architecture (your own, on the
  *free tier*, or a fictional design).
- **Objective:** identify exposures, excessive privileges, and missing controls, and propose
  improvements.
- **Prerequisites:** [Ch. 9](../../HANDBOOK.md#chapter-9) and [Ch. 11](../../HANDBOOK.md#chapter-11);
  a cloud account on the *free tier* (optional).
- **Safety rules:** **only** on your own account/resources. Set a **budget and alerts** before
  creating any resource and **destroy** them when done. Do not use third-party production
  credentials.
- **General steps:**
  1. Map components (identities, networks, storage, secrets, logging).
  2. Assess against the shared responsibility model and least privilege.
  3. Look for exposed storage, overly broad roles, missing logging, *metadata service*
     protection.
  4. Recommend improvements (CSPM, segmentation, multi-account).
- **Deliverables:** a posture report with prioritized findings and recommendations.
- **Completion criteria:** you point out real risks and explain how an SSRF could abuse the
  *metadata service*.
- **Reflection questions:** which finding has the largest *blast radius*? What would you automate
  with IaC/CSPM?
- **Portfolio evidence:** demonstrates architecture and defense.
- **Extensions:** declare the architecture in IaC and scan it; connect with
  [supply-chain](../supply-chain/) (CI/CD).
- **What NOT to do:** test accounts/environments that are not yours; leave paid resources running
  (cost).

## Sample data (synthetic — over-permissive IAM policy)

```json
{ "Effect": "Allow", "Action": "*", "Resource": "*" }
```

Explain why this is dangerous and rewrite it least-privilege for an app that reads one bucket.

## Success rubric

- [ ] Misconfiguration identified · [ ] least-privilege fix written · [ ] public-exposure check ·
  [ ] audit logging enabled (concept).
