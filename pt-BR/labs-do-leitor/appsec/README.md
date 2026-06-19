# Trilha: AppSec

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/appsec/README.md)

Capítulo: [Cap. 6](../../HANDBOOK.md#capitulo-6). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 7 — Threat model de uma aplicação

- **Cenário:** antes de construir/avaliar uma aplicação, você precisa antecipar "o que pode
  dar errado".
- **Objetivo:** produzir um *threat model* (modelo de ameaças) de uma aplicação (pode ser a do
  [Projeto 6](../web-security/) ou um sistema fictício).
- **Pré-requisitos:** [Cap. 6](../../HANDBOOK.md#capitulo-6) e
  [Cap. 10](../../HANDBOOK.md#capitulo-10); noções de STRIDE.
- **Regras de segurança:** atividade documental; nenhum teste contra sistemas reais.
- **Passos gerais:**
  1. Desenhar um diagrama de fluxo de dados (componentes, confianças, fronteiras).
  2. Enumerar ameaças por **STRIDE** em cada fronteira.
  3. Mapear ameaças a controles (preventivos/detectivos) e a riscos priorizados.
  4. Relacionar, quando útil, técnicas do **MITRE ATT&CK**.
- **Entregáveis:** documento de threat model com diagrama, lista de ameaças, controles e
  priorização.
- **Critérios de conclusão:** você justifica priorização por risco (probabilidade × impacto) e
  liga ameaças a controles concretos.
- **Perguntas de reflexão:** quais ameaças você aceitou (risco residual) e por quê? Onde está o
  maior *blast radius*?
- **Evidências para portfólio:** demonstra arquitetura e raciocínio de risco.
- **Extensões:** revisar o threat model após mudanças de arquitetura; usar ASVS para derivar
  requisitos verificáveis.
- **O que NÃO fazer:** confundir lista de vulnerabilidades genéricas com modelagem específica
  do sistema.

## Dados de exemplo (sintéticos — linha STRIDE)

| STRIDE | Ameaça | Mitigação |
|---|---|---|
| Elevation of privilege | usuário comum alcança ações de admin | deny-by-default, autz por ação |

Estenda o modelo com ao menos uma ameaça por categoria STRIDE para uma app pequena.

## Rubrica de sucesso

- [ ] Fluxo de dados desenhado · [ ] uma ameaça por categoria STRIDE · [ ] cada uma com mitigação ·
  [ ] rastreadas como requisitos/testes.
