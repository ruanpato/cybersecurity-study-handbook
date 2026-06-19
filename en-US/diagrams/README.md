# Diagrams

🌐 [Português (pt-BR)](../../pt-BR/diagramas/README.md) · [Book README](../README.md)

This folder holds diagrams that support [HANDBOOK.md](../HANDBOOK.md). The project convention
(see [CONTRIBUTING.md](../CONTRIBUTING.md)) is:

- Prefer **Mermaid** embedded in the Markdown itself (versionable as text).
- **Always** accompany each diagram with a **textual description**, so the content survives PDF
  exporters that do not render Mermaid and for accessibility.
- Avoid external binary images that may disappear. If a diagram is exported to an image, keep the
  source (`.mmd` or Mermaid block) versioned.

## Diagrams already present in the handbook

These diagrams are embedded directly in [HANDBOOK.md](../HANDBOOK.md), each with its textual
description:

- Safe lab topology — [Ch. 1](../HANDBOOK.md#chapter-1).
- Process address space (stack/heap) — [Ch. 2](../HANDBOOK.md#chapter-2).
- Network layer encapsulation — [Ch. 5](../HANDBOOK.md#chapter-5).
- Testing tools in the cycle (SAST/DAST/SCA/RASP) — [Ch. 6](../HANDBOOK.md#chapter-6).
- Cyber Kill Chain — [Ch. 10](../HANDBOOK.md#chapter-10).
- Detection flow (log → alert → response) — [Ch. 14](../HANDBOOK.md#chapter-14).
- Purple team cycle — [Ch. 18](../HANDBOOK.md#chapter-18).

## Suggested diagrams to add (2nd edition)

- OAuth 2.0 / OIDC flow diagram ([Ch. 9](../HANDBOOK.md#chapter-9)).
- PKI/TLS trust chain ([Ch. 8](../HANDBOOK.md#chapter-8)).
- Multi-account cloud architecture ([Ch. 11](../HANDBOOK.md#chapter-11)).
- Build flow and supply chain injection points ([Ch. 13](../HANDBOOK.md#chapter-13)).

When creating one, save the source here (e.g., `oauth-flow.mmd`) and include the textual
description.
