# Como manter e expandir este handbook

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../en-US/CONTRIBUTING.md) · [README](README.md)

Este material é vivo. Use estas convenções para mantê-lo consistente e portátil.

## Princípios editoriais

- **Português brasileiro.** Termos de indústria em inglês são mantidos e explicados na
  **primeira ocorrência** (e listados em [GLOSSARIO.md](GLOSSARIO.md)).
- **Profundidade mínima.** Não considere um tópico coberto só porque foi citado. Cada tópico
  principal responde às nove perguntas de domínio (ver
  [HANDBOOK — sobre este livro](HANDBOOK.md#sobre-este-livro)).
- **Defesa junto da ofensiva.** Todo conceito ofensivo vem com detecção, prevenção e
  reprodução segura. **Nunca** adicione payloads, malware funcional, técnicas
  operacionalizáveis de evasão ou instruções de invasão de terceiros.
- **Sem promessas irreais.** Mantenha o realismo dos [seis estágios](HANDBOOK.md#sobre-este-livro)
  e dos prazos do [ROADMAP.md](ROADMAP.md).
- **Sem marketing, sem emojis em excesso.** O tom é de livro técnico profissional.

## Markdown portátil

- Use Markdown padrão (CommonMark/GFM); evite HTML específico de um renderizador.
- Títulos com `#`/`##`/`###` consistentes; um único `#` (H1) por arquivo como título.
- Tabelas só quando melhoram a comparação.
- **Diagramas:** Mermaid é permitido, mas **sempre** acompanhe de uma **descrição textual**
  logo abaixo, para que o conteúdo sobreviva a exportadores que não renderizam Mermaid.
- **Links internos relativos** entre os arquivos do repositório (ex.: `[x](ROADMAP.md)`).
  Âncoras de seção em minúsculas, sem acentos, com hífens (ex.: `#capitulo-6`).
- Não dependa de imagens externas que possam sumir.

## Convenção de âncoras

Os capítulos do HANDBOOK usam âncoras explícitas `<a id="capitulo-N"></a>`. Ao adicionar
capítulos, mantenha o padrão e atualize o **Sumário**, o **Índice temático** (Apêndice B) e
os links em [ROADMAP.md](ROADMAP.md), [ESPECIALIZACOES.md](ESPECIALIZACOES.md) e
[CHECKLIST-DE-PROGRESSO.md](CHECKLIST-DE-PROGRESSO.md).

## Referências

- Apenas fontes **reais** e verificadas. Veja o formato em [REFERENCIAS.md](REFERENCIAS.md).
- **Acesse cada link antes de adicioná-lo.** Registre a data de consulta (AAAA-MM-DD) e a versão,
  e sinalize material desatualizado mas historicamente relevante. Não adicione links não verificados.

## Labs

- Os arquivos em [labs-do-leitor/](labs-do-leitor/) descrevem desafios para **o leitor**.
  Não inclua soluções completas. Use o [TEMPLATE-LAB.md](labs-do-leitor/TEMPLATE-LAB.md).

<a id="exportacao-para-pdf"></a>

## Exportação para PDF (opcional)

O Markdown foi escrito para Pandoc/Obsidian/Typora/VS Code. Um exemplo de comando Pandoc
(requer Pandoc e um motor LaTeX instalados; **não** é executado por padrão):

```bash
pandoc HANDBOOK.md \
  --toc --toc-depth=2 \
  --metadata title="Cibersegurança da Graduação à Especialização" \
  -o build/HANDBOOK.pdf
```

Mermaid pode exigir um filtro adicional (ex.: `mermaid-filter`) para renderizar diagramas no
PDF; as descrições textuais garantem que o conteúdo permaneça compreensível sem ele.
Artefatos de build (`build/`, `*.pdf`) já estão no [.gitignore](../.gitignore).

<a id="build-e-deploy"></a>

## Site estático — build e deploy (opcional)

O site bilíngue é gerado com **MkDocs Material** e publicado automaticamente no **GitHub Pages**
por [`.github/workflows/deploy-docs.yml`](../.github/workflows/deploy-docs.yml) a cada push em
`main`. O site fica em **https://ruanpato.com/cybersecurity-study-handbook/**.

Configuração única: **Settings → Pages → Build and deployment → Source: GitHub Actions** (o
workflow também tenta habilitar isso automaticamente).

> **Por que o staging?** O MkDocs proíbe que `docs_dir` seja a raiz do repositório, e o conteúdo
> vive na raiz (`en-US/`, `pt-BR/`) para que os `.md` crus continuem legíveis no GitHub. O
> workflow copia o conteúdo para `site-src/` (no .gitignore) e constrói a partir de lá.

Para **pré-visualizar localmente**, reproduza o mesmo staging:

```bash
pip install mkdocs-material

# Monta o conteúdo em site-src/ (espelha o passo do CI)
rm -rf site-src && mkdir -p site-src
cp -R en-US pt-BR site-src/
cp README.md site-src/index.md
cp LICENSE LICENSE-CODE SECURITY.md CODE_OF_CONDUCT.md site-src/

mkdocs serve     # pré-visualização em http://127.0.0.1:8000
mkdocs build     # ou gera o site estático em ./site (no .gitignore)
```

## Mensagens de commit

Os commits seguem [Conventional Commits](https://www.conventionalcommits.org/):
`tipo(escopo): resumo`. Tipos comuns: `feat`, `fix`, `docs`, `refactor`, `ci`, `chore`. Escopos
sugeridos: `en-US`, `pt-BR`, `handbook`, `roadmap`, `labs`, `refs`, `ci`, `deps`. Exemplos:

```text
docs(handbook): adiciona exemplo de SQLi no §6.5
fix(pt-BR): corrige âncora quebrada no ROADMAP
ci: fixa as actions do Pages em SHAs de commit
```

Um hook `commit-msg` (commitlint + husky) valida isso localmente. Rode `npm install` uma vez
para habilitá-lo.

## Git

Este repositório usa Git local. **Não** faça commits, push ou configure remotes como parte
da manutenção automática deste material, salvo decisão explícita do mantenedor. Nunca
versione segredos.
