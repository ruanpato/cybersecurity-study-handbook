# Trilha: Projeto Final (integrado)

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/final-project/README.md)

Integra todas as trilhas. **Releia o [Capítulo 0](../../HANDBOOK.md#capitulo-0).** Regras
gerais em [../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 20 — Ataque autorizado → detecção → resposta → correção

- **Cenário:** o projeto-síntese. Em um laboratório **inteiramente seu e isolado**, você
  percorre o ciclo completo: emula uma ação ofensiva **autorizada (no seu lab)**, detecta-a com
  seu *blue team*, responde como em um incidente e corrige a causa-raiz.
- **Objetivo:** demonstrar, de ponta a ponta, as sete capacidades de portfólio (ver
  [PORTFOLIO-E-CARREIRA.md](../../PORTFOLIO-E-CARREIRA.md)).
- **Pré-requisitos:** Projetos 1, 4–5, 10–14 (ao menos). Fases 1–4 do
  [ROADMAP](../../ROADMAP.md).
- **Regras de segurança:** tudo em lab isolado; escopo/ROE escritos; nenhuma ação fora do seu
  ambiente; dados sintéticos; snapshots.
- **Passos gerais:**
  1. **Planejar:** definir objetivo, escopo, ROE e a técnica ATT&CK a emular.
  2. **Ofensiva (autorizada, no lab):** executar a ação dentro do escopo, coletando evidências.
  3. **Detecção:** verificar se seu SIEM/detecções ([blue-team](../blue-team/)) a capturam;
     ajustar (ciclo **purple team**).
  4. **Resposta:** aplicar o ciclo NIST 800-61 ([dfir](../dfir/)) — conter, erradicar,
     recuperar.
  5. **Correção:** remediar a causa-raiz (hardening, AppSec, IAM) e **reverificar**.
  6. **Comunicar:** relatório técnico + resumo executivo.
- **Entregáveis:** dossiê integrado (planejamento, evidências, detecções, relatório de
  incidente, correções, relatório executivo).
- **Critérios de sucesso:** a técnica é detectada (ou a lacuna é fechada), o incidente é
  respondido, a causa-raiz é corrigida e reverificada, e a comunicação atende público técnico
  e executivo.
- **Perguntas de reflexão:** onde a defesa falhou primeiro? Qual controle teria maior retorno?
  O que você faria diferente?
- **Evidências para portfólio:** este é o melhor cartão de visitas para uma primeira vaga —
  demonstra todas as capacidades de forma integrada.
- **Extensões:** repetir com outra técnica ATT&CK; medir melhoria de cobertura ao longo do
  tempo.
- **O que NÃO fazer:** qualquer ação fora do laboratório; usar alvos/dados de terceiros;
  publicar artefatos ofensivos operacionalizáveis.

## Rubrica de sucesso (projeto integrado)

- [ ] Apenas lab autorizado · [ ] ciclo ofensiva → detecção → resposta → relatório · [ ] write-up
  bilíngue · [ ] evidência pronta para portfólio.
