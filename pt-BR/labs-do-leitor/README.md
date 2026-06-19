# Laboratórios do Leitor

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../en-US/reader-labs/README.md) · [README](README.md)

Esta pasta contém os **laboratórios e projetos que você deve implementar**. Aqui há cenários,
objetivos, pré-requisitos, regras de segurança, critérios de conclusão, perguntas de reflexão
e sugestões de evidência para portfólio — **não** soluções prontas. A implementação, o
código e os relatórios são seu trabalho (e seu portfólio).

## Como usar

1. Leia o capítulo correspondente no [HANDBOOK.md](../HANDBOOK.md) antes de começar.
2. Use o [TEMPLATE-LAB.md](TEMPLATE-LAB.md) para documentar cada lab.
3. Respeite **todas** as regras de segurança e o [Capítulo 0](../HANDBOOK.md#capitulo-0)
   (ética/autorização).
4. Ao concluir, registre a evidência no [CHECKLIST-DE-PROGRESSO.md](../CHECKLIST-DE-PROGRESSO.md).

## Scaffolding dos labs e dados de exemplo

Estes são **laboratórios guiados com scaffolding**, não soluções. Cada lab dá uma estrutura padrão
para você partir; **você** implementa, investiga, testa e documenta.

**Campos padrão (ver [TEMPLATE-LAB.md](TEMPLATE-LAB.md)):** objetivo · pré-requisitos ·
ambiente seguro/autorizado · setup sugerido · passos de alto nível · suas tarefas · entregável
esperado · critérios de sucesso · critérios de segurança · extensão opcional · como documentar no
portfólio · o que **não** fazer · links para o capítulo / roadmap / carreira.

**Dados de exemplo.** Quando útil, um lab fornece dados **pequenos, sintéticos e textuais** que
você cola em arquivos — nunca dados reais. Exemplo (log sintético de auth/EDR para um lab de
blue team ou DFIR):

```text
2026-03-10T02:14:07Z host=web01 user=svc-deploy action=login    result=success src_asn=AS65000
2026-03-10T02:15:31Z host=web01 user=svc-deploy action=schtask  name=updater
2026-03-10T02:16:50Z host=web01 proxy=allow dst=cdn-updates.example interval=60s bytes=512
```

Mantenha qualquer dado que adicionar **pequeno e revisável**; nunca versione segredos ou evidência
real.

<a id="regras-de-seguranca-valem-para-todos-os-labs"></a>

## Regras de segurança (valem para todos os labs)

- Trabalhe **somente** em máquinas próprias, laboratório isolado, CTFs/plataformas que
  autorizam, ou ambientes com **autorização formal**.
- **Nunca** exponha máquinas vulneráveis à internet.
- **Nunca** baixe amostras reais de malware aqui; use apenas arquivos **benignos** ou de
  treino, em rede isolada.
- Não armazene segredos, dados pessoais ou evidências reais no repositório.
- Use snapshots; restaure o estado limpo após experimentos.

## Trilhas (uma pasta por tema)

| Trilha | Projetos relacionados | Capítulo |
|--------|----------------------|----------|
| [fundamentos/](fundamentos/) | 1 | [Cap. 1–2](../HANDBOOK.md#capitulo-1) |
| [programacao/](programacao/) | 2 | [Cap. 3](../HANDBOOK.md#capitulo-3) |
| [redes/](redes/) | 3 | [Cap. 5](../HANDBOOK.md#capitulo-5) |
| [linux/](linux/) | 4 | [Cap. 4](../HANDBOOK.md#capitulo-4) |
| [windows/](windows/) | 5 | [Cap. 4](../HANDBOOK.md#capitulo-4) |
| [web-security/](web-security/) | 6 | [Cap. 6](../HANDBOOK.md#capitulo-6) |
| [appsec/](appsec/) | 7 | [Cap. 6](../HANDBOOK.md#capitulo-6) |
| [cloud-security/](cloud-security/) | 17 | [Cap. 11](../HANDBOOK.md#capitulo-11) |
| [blue-team/](blue-team/) | 11, 12, 19 | [Cap. 14](../HANDBOOK.md#capitulo-14) |
| [red-team/](red-team/) | 10, 14 | [Cap. 17–18](../HANDBOOK.md#capitulo-17) |
| [dfir/](dfir/) | 13 | [Cap. 16](../HANDBOOK.md#capitulo-16) |
| [osint/](osint/) | 16 | [Cap. 19](../HANDBOOK.md#capitulo-19) |
| [malware-analysis/](malware-analysis/) | 15 | [Cap. 21–23](../HANDBOOK.md#capitulo-21) |
| [supply-chain/](supply-chain/) | 8, 9, 18 | [Cap. 13](../HANDBOOK.md#capitulo-13) |
| [projeto-final/](projeto-final/) | 20 | integrado |

Mapa completo dos 20 projetos em
[PORTFOLIO-E-CARREIRA.md](../PORTFOLIO-E-CARREIRA.md#os-20-projetos).

> As subpastas contêm um README com o(s) lab(s) e um `.gitkeep` para preservar a estrutura
> vazia até você adicionar seus próprios artefatos.
