# Glossary

🌐 **Language:** **English (en-US)** · [Português (pt-BR)](../pt-BR/GLOSSARIO.md) · [README](README.md)

Terms and acronyms used in the handbook, in alphabetical order. The first occurrence of each
term in the [HANDBOOK.md](HANDBOOK.md) also explains it in context.

- **ABAC** — *Attribute-Based Access Control*.
- **ACID** — Atomicity, Consistency, Isolation, Durability (transaction properties).
- **ACL** — *Access Control List*.
- **AD** — *Active Directory*. Microsoft's directory service (domains and forests).
- **AppSec** — *Application Security*.
- **ARP** — *Address Resolution Protocol*. Maps IP to MAC on the local network.
- **ASLR** — *Address Space Layout Randomization*. Randomizes memory addresses.
- **ASVS** — *Application Security Verification Standard* (OWASP).
- **ATT&CK** — a knowledge base of adversary tactics/techniques (MITRE).
- **BEC** — *Business Email Compromise*.
- **BOLA** — *Broken Object Level Authorization* (APIs).
- **C2** — *Command and Control*. The attacker's control channel.
- **CAPEC** — *Common Attack Pattern Enumeration and Classification* (MITRE).
- **CIA** — Confidentiality, Integrity, Availability.
- **CIS** — *Center for Internet Security*. Publishes Controls and Benchmarks.
- **CNAPP** — *Cloud-Native Application Protection Platform*.
- **CORS** — *Cross-Origin Resource Sharing*. Relaxes the Same-Origin Policy in a controlled way.
- **CSP** — *Content Security Policy*. A header restricting resource origins.
- **CSPM** — *Cloud Security Posture Management*.
- **CSRF** — *Cross-Site Request Forgery*.
- **CTI** — *Cyber Threat Intelligence*.
- **CVE** — *Common Vulnerabilities and Exposures*. A vulnerability identifier.
- **CVSS** — *Common Vulnerability Scoring System*. Scores severity.
- **CWE** — *Common Weakness Enumeration*. Types of weakness.
- **CWPP** — *Cloud Workload Protection Platform*.
- **DAST** — *Dynamic Application Security Testing*.
- **DEP/NX** — *Data Execution Prevention* / *No-eXecute*. Prevents execution in data regions.
- **DFIR** — *Digital Forensics and Incident Response*.
- **DHCP** — *Dynamic Host Configuration Protocol*.
- **DMARC/DKIM/SPF** — email authentication mechanisms.
- **DNS** — *Domain Name System*. Name resolution.
- **EDR/XDR** — *Endpoint/Extended Detection and Response*.
- **ELF** — *Executable and Linkable Format* (Linux binaries).
- **GDPR** — *General Data Protection Regulation* (EU).
- **GPO** — *Group Policy Object* (Windows/AD).
- **GRC** — *Governance, Risk and Compliance*.
- **HMAC** — *Hash-based Message Authentication Code*.
- **HSM** — *Hardware Security Module*.
- **HSTS** — *HTTP Strict Transport Security*.
- **IAM** — *Identity and Access Management*.
- **IAST** — *Interactive Application Security Testing*.
- **IDOR** — *Insecure Direct Object Reference*.
- **IDS/IPS** — *Intrusion Detection/Prevention System*.
- **IOC** — *Indicator of Compromise*.
- **IaC** — *Infrastructure as Code*.
- **JIT** — *Just-in-Time* (access granted only when needed).
- **JTAG** — a hardware debug/test interface.
- **JWT** — *JSON Web Token*.
- **KDF** — *Key Derivation Function*.
- **KMS** — *Key Management Service*.
- **LGPD** — Brazil's General Data Protection Law.
- **LotL** — *Living off the Land*. Abuse of legitimate system tools.
- **Mach-O** — macOS binary format.
- **MFA** — *Multi-Factor Authentication*.
- **MISP** — an open-source threat intelligence sharing platform.
- **NAT** — *Network Address Translation*.
- **NTLM** — a legacy Microsoft authentication protocol.
- **OIDC** — *OpenID Connect*. Authentication over OAuth 2.0.
- **OSINT** — *Open Source Intelligence*.
- **OWASP** — *Open Worldwide Application Security Project*.
- **PAM** — *Pluggable Authentication Modules* (Linux) or *Privileged Access Management*
  (identity context). The meaning depends on context.
- **PCI DSS** — *Payment Card Industry Data Security Standard*.
- **PE** — *Portable Executable* (Windows binaries).
- **PKI** — *Public Key Infrastructure*.
- **PTES** — *Penetration Testing Execution Standard*.
- **RASP** — *Runtime Application Self-Protection*.
- **RBAC** — *Role-Based Access Control*.
- **ReDoS** — *Regular expression Denial of Service*.
- **RE** — *Reverse Engineering*.
- **REST** — an API architecture style.
- **ROE** — *Rules of Engagement*.
- **SAML** — *Security Assertion Markup Language*. Identity federation.
- **SAST** — *Static Application Security Testing*.
- **SBOM** — *Software Bill of Materials*.
- **SCA** — *Software Composition Analysis*.
- **SIEM** — *Security Information and Event Management*.
- **SIP** — *System Integrity Protection* (macOS).
- **SLSA** — *Supply-chain Levels for Software Artifacts*.
- **SOAR** — *Security Orchestration, Automation and Response*.
- **SOC** — *Security Operations Center*; also *SOC 2* (a controls report).
- **SOP** — *Same-Origin Policy*.
- **SQLi** — *SQL Injection*.
- **SSH** — *Secure Shell*.
- **SSO** — *Single Sign-On*.
- **SSRF** — *Server-Side Request Forgery*.
- **STIX/TAXII** — format and transport for sharing threat intelligence.
- **STRIDE** — a threat-category model (Spoofing, Tampering, Repudiation, Information
  disclosure, Denial of service, Elevation of privilege).
- **SUID/SGID** — bits that run a file with the owner's/group's privilege (Linux).
- **TCC** — *Transparency, Consent, and Control* (macOS resource access control).
- **TCP/UDP** — transport protocols (reliable / connectionless).
- **TLS** — *Transport Layer Security*.
- **TOCTOU** — *Time-of-Check to Time-of-Use*. A race condition.
- **TPM** — *Trusted Platform Module*.
- **TTP** — *Tactics, Techniques, and Procedures*.
- **UART** — a serial interface used in hardware debugging.
- **WSTG** — *Web Security Testing Guide* (OWASP).
- **XSS** — *Cross-Site Scripting*.
- **XXE** — *XML External Entity*.
- **YARA** — a rule language to identify files/memory by patterns.
- **Zero Trust** — a security model that never trusts implicitly; always verifies.

## Additional terms (v0.2)

- **blast radius** — the scope of damage if a component is compromised; reduced by least privilege
  and segmentation.
- **certificate pinning** — binding an app to a specific server certificate/key to resist MITM.
- **corpus** — the seed inputs a fuzzer mutates.
- **crash triage** — deciding whether a crash is a real, security-relevant bug, and its severity.
- **deep link** — a URL that opens a specific in-app screen/action (validate it server-side).
- **DPIA / RIPD** — Data Protection Impact Assessment (RIPD in Brazil); documents risks of
  high-risk personal-data processing.
- **EPSS** — Exploit Prediction Scoring System; estimated probability a vulnerability is exploited.
- **firmware** — software stored on a device that controls its hardware.
- **fuzzing** — feeding mutated/random inputs to a target to find crashes/bugs.
- **harness** — the small program that feeds inputs to the function under fuzz test.
- **insecure deserialization** — unsafely rebuilding objects from untrusted data.
- **JWKS** — JSON Web Key Set; an issuer's public keys used to verify token signatures.
- **KEV** — CISA's Known Exploited Vulnerabilities catalog.
- **MASVS / MASTG** — OWASP Mobile Application Security Verification Standard / Testing Guide.
- **metamorphism** — malware that rewrites its own code each generation.
- **NetworkPolicy** — a Kubernetes resource that controls pod-to-pod traffic.
- **PKCE** — Proof Key for Code Exchange; protects the OAuth authorization-code flow.
- **polymorphism** — malware that changes its appearance (e.g., via packing) each infection.
- **prepared statement** — a parameterized query that separates SQL code from data (prevents SQLi).
- **Purple Team** — red + blue collaborating to turn attacks into detections.
- **residual risk** — the risk that remains after controls are applied.
- **risk matrix** — a likelihood × impact table used to prioritize risks.
- **root cause analysis** — identifying the underlying cause of a bug or incident.
- **social engineering simulation** — an authorized exercise to measure/improve human resilience.
- **SWD** — Serial Wire Debug; a hardware debug interface (cf. JTAG).
- **timeline** — the chronological ordering of events in DFIR.
- **vulnerability management** — the cycle of inventory → discover → prioritize → remediate →
  verify.
- **WebView** — an embedded browser component inside a mobile/desktop app.
