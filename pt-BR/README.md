# Handbook de Cibersegurança e Roteiro de Estudos (pt-BR)

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../en-US/README.md) · [Início / Landing](../README.md)

> **Estado: beta (v0.2).** Livro **introdutório** e roteiro progressivo de estudos para quem
> inicia uma graduação em Ciência da Computação e pretende construir uma carreira de longo
> prazo em cibersegurança. Profundidade intermediária **em evolução**, declarada abertamente.

Este repositório é simultaneamente um **livro técnico introdutório**, um **roteiro de estudos
por fases**, um **catálogo de laboratórios e projetos práticos** e um **mapa de
especializações**. Ele foi escrito para ser lido de forma autônoma e também exportado para PDF.
O aprofundamento de nível intermediário em alguns capítulos é um trabalho em andamento,
declarado abertamente.

---

## Aviso ético e legal (leia antes de tudo)

Todo o conteúdo ofensivo descrito aqui destina-se **exclusivamente** a:

- sistemas e máquinas de sua propriedade;
- ambientes de laboratório isolados criados para treinamento;
- plataformas educacionais que **autorizam explicitamente** os testes (CTFs, ranges);
- ambientes para os quais exista **autorização formal e por escrito**.

Testar, varrer ou explorar sistemas de terceiros sem autorização é **crime** na maioria
das jurisdições (no Brasil, ver a Lei 12.737/2012 e o Marco Civil da Internet, Lei
12.965/2014; mais detalhes em [HANDBOOK.md](HANDBOOK.md#capitulo-0)). Este material **não**
ensina a invadir terceiros, roubar credenciais, criar malware funcional ou conduzir
campanhas reais de phishing. Conhecimento ofensivo é apresentado sempre com o seu
contraponto defensivo: como detectar, prevenir e reproduzir com segurança.

Você é integralmente responsável pelo uso que fizer deste material.

---

## Como navegar pelo material

Comece pelos documentos na raiz. A ordem recomendada de leitura é:

| # | Arquivo | O que é | Quando ler |
|---|---------|---------|-----------|
| 1 | [HANDBOOK.md](HANDBOOK.md) | O livro: todos os capítulos técnicos (nível introdutório) | Leitura principal, do início ao fim |
| 2 | [ROADMAP.md](ROADMAP.md) | Trilha de estudos em fases, com planos de 12/24/36 meses | Para planejar seu cronograma |
| 3 | [CHECKLIST-DE-PROGRESSO.md](CHECKLIST-DE-PROGRESSO.md) | Autoavaliação por níveis de domínio | Em paralelo, para medir evolução |
| 4 | [ESPECIALIZACOES.md](ESPECIALIZACOES.md) | Matriz comparativa de áreas de segurança | Ao escolher uma especialização |
| 5 | [PORTFOLIO-E-CARREIRA.md](PORTFOLIO-E-CARREIRA.md) | Como construir portfólio e autoridade técnica | A partir do 2º semestre de estudo |
| 6 | [GLOSSARIO.md](GLOSSARIO.md) | Definições de termos e siglas | Consulta pontual |
| 7 | [REFERENCIAS.md](REFERENCIAS.md) | Fontes oficiais, livros e plataformas | Consulta pontual |

Pastas de apoio:

- [labs-do-leitor/](labs-do-leitor/) — laboratórios e projetos que **você** deve implementar.
  Não há soluções prontas: há cenários, objetivos, regras de segurança e critérios de conclusão.
- [diagramas/](diagramas/) — diagramas (Mermaid e descrições textuais) que apoiam os capítulos.
- [scripts/](scripts/) — utilitários auxiliares **seus** para o estudo (não há código ofensivo aqui).

Documentos de processo:

- [CONTRIBUTING.md](CONTRIBUTING.md) — como manter e expandir este handbook.
- [LICENSE-NOTES.md](LICENSE-NOTES.md) — notas sobre licenciamento, citações e direitos autorais.

## Como estudar com este material

1. **Leia ativamente.** Não basta executar comandos. Para cada conceito, saiba responder:
   o que é, por que existe, como funciona, como falha e como se relaciona com segurança.
2. **Monte o laboratório primeiro.** Veja o [Capítulo 1 do HANDBOOK](HANDBOOK.md#capitulo-1)
   e o [Lab de fundamentos](labs-do-leitor/fundamentos/).
3. **Documente tudo.** Cada lab vira evidência de portfólio. Use o
   [TEMPLATE-LAB.md](labs-do-leitor/TEMPLATE-LAB.md).
4. **Avalie-se com honestidade.** Use o [CHECKLIST-DE-PROGRESSO.md](CHECKLIST-DE-PROGRESSO.md)
   mensalmente. Domínio exige evidências, não sensação subjetiva.
5. **Revise em ciclos.** O roadmap indica quando voltar a conteúdos anteriores.

## Expectativas realistas

Ninguém se torna referência técnica concluindo cursos durante alguns meses. Este material
distingue seis estágios de evolução — do conhecimento introdutório ao reconhecimento como
referência — e deixa claro que a jornada até a especialização profunda costuma exigir
**anos** de estudo, prática deliberada, investigação, escrita e participação em comunidades.
Veja a discussão completa na [introdução do HANDBOOK](HANDBOOK.md#sobre-este-livro).

## Exportar para PDF (opcional, futuro)

O Markdown foi escrito para ser portátil (Pandoc, Obsidian, Typora, VS Code). Um exemplo
de comando Pandoc está documentado em [CONTRIBUTING.md](CONTRIBUTING.md#exportacao-para-pdf).
Nenhum PDF é gerado por padrão.

---

Versão 0.2 (beta) — gerado em 2026-06-17. Conteúdo educacional, em português brasileiro.
