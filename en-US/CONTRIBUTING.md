# How to maintain and expand this handbook

🌐 **Language:** **English (en-US)** · [Português (pt-BR)](../pt-BR/CONTRIBUTING.md) · [README](README.md)

This material is living. Use these conventions to keep it consistent and portable.

## Editorial principles

- **Bilingual parity.** The `en-US/` and `pt-BR/` trees mirror each other 1:1. Any change to one
  language must be reflected in the other (same chapters, sections, diagrams, exercises). Each
  document has a language switcher at the top.
- **Industry terms** in English are kept and explained on **first occurrence** (and listed in
  the [GLOSSARY.md](GLOSSARY.md)).
- **Minimum depth.** Do not consider a topic covered just because it is named. Each main topic
  answers the nine mastery questions (see [HANDBOOK — about this book](HANDBOOK.md#about-this-book)).
- **Defense alongside offense.** Every offensive concept comes with detection, prevention, and
  safe reproduction. **Never** add payloads, functional malware, operationalizable
  defense-evasion techniques, or instructions to break into third parties.
- **No unrealistic promises.** Keep the realism of the [six stages](HANDBOOK.md#about-this-book)
  and the [ROADMAP.md](ROADMAP.md) timelines.
- **No marketing, no excessive emojis.** The tone is that of a professional technical book.

## Portable Markdown

- Use standard Markdown (CommonMark/GFM); avoid renderer-specific HTML.
- Headings with `#`/`##`/`###` consistent; a single `#` (H1) per file as the title.
- Tables only when they improve comparison.
- **Diagrams:** Mermaid is allowed, but **always** accompany it with a **textual description**
  right below, so the content survives PDF exporters that do not render Mermaid.
- **Relative internal links** between repository files (e.g., `[x](ROADMAP.md)`). Section anchors
  in lowercase, no accents, with hyphens (e.g., `#chapter-6`).
- Do not depend on external images that may disappear.

## Anchor convention

The HANDBOOK chapters use explicit anchors `<a id="chapter-N"></a>` (en-US) / `capitulo-N`
(pt-BR). When adding chapters, keep the pattern and update the **table of contents**, the
**thematic index** (Appendix B), and the links in [ROADMAP.md](ROADMAP.md),
[SPECIALIZATIONS.md](SPECIALIZATIONS.md), and [PROGRESS-CHECKLIST.md](PROGRESS-CHECKLIST.md).

## References

- Only **real**, verified sources. See the format in [REFERENCES.md](REFERENCES.md).
- **Access every link before adding it.** Record the consultation date (YYYY-MM-DD) and version,
  and flag outdated but historically relevant material. Do not add unverified links.

## Labs

- The files in [reader-labs/](reader-labs/) describe challenges for **the reader**. Do not
  include complete solutions. Use the [LAB-TEMPLATE.md](reader-labs/LAB-TEMPLATE.md).

<a id="export-to-pdf"></a>

## Export to PDF (optional)

The Markdown is written for Pandoc/Obsidian/Typora/VS Code. A sample Pandoc command (requires
Pandoc and a LaTeX engine installed; **not** run by default):

```bash
pandoc HANDBOOK.md \
  --toc --toc-depth=2 \
  --metadata title="Cybersecurity from Undergrad to Specialist" \
  -o build/HANDBOOK.pdf
```

Mermaid may require an extra filter (e.g., `mermaid-filter`) to render diagrams in the PDF; the
textual descriptions ensure the content remains understandable without it. Build artifacts
(`build/`, `*.pdf`) are already in the [.gitignore](../.gitignore).

<a id="build-and-deploy"></a>

## Static site — build & deploy (optional)

The bilingual site is built with **MkDocs Material** and deployed automatically to **GitHub
Pages** by [`.github/workflows/deploy-docs.yml`](../.github/workflows/deploy-docs.yml) on every
push to `main`. The site is served at
**https://ruanpato.com/cybersecurity-study-handbook/**.

One-time setup: **Settings → Pages → Build and deployment → Source: GitHub Actions** (the
workflow also tries to enable this automatically).

> **Why staging?** MkDocs forbids `docs_dir` from being the repo root, and the content lives at
> the root (`en-US/`, `pt-BR/`) so the raw `.md` files stay readable on GitHub. The workflow
> copies the content into `site-src/` (git-ignored) and builds from there.

To **preview locally**, reproduce the same staging step:

```bash
pip install mkdocs-material

# Stage content into site-src/ (mirrors the CI step)
rm -rf site-src && mkdir -p site-src
cp -R en-US pt-BR site-src/
cp README.md site-src/index.md
cp LICENSE LICENSE-CODE SECURITY.md CODE_OF_CONDUCT.md site-src/

mkdocs serve     # preview at http://127.0.0.1:8000
mkdocs build     # or build the static site into ./site (git-ignored)
```

## Commit messages

Commits follow [Conventional Commits](https://www.conventionalcommits.org/): `type(scope): summary`.
Common types: `feat`, `fix`, `docs`, `refactor`, `ci`, `chore`. Suggested scopes: `en-US`,
`pt-BR`, `handbook`, `roadmap`, `labs`, `refs`, `ci`, `deps`. Examples:

```text
docs(handbook): add worked SQLi example to §6.5
fix(pt-BR): correct broken anchor in ROADMAP
ci: pin Pages actions to commit SHAs
```

A `commit-msg` hook (commitlint + husky) checks this locally. Run `npm install` once to enable it.

## Git

This repository uses local Git. **Do not** commit, push, or configure remotes as part of routine
maintenance of this material, unless the maintainer explicitly decides to. Never version secrets.
