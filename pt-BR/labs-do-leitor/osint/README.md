# Trilha: OSINT

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/osint/README.md)

Capítulo: [Cap. 19](../../HANDBOOK.md#capitulo-19). **Releia o
[Capítulo 0](../../HANDBOOK.md#capitulo-0) (ética/privacidade/LGPD).** Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

> **Limites inegociáveis:** use **apenas** identidades fictícias, **domínios de
> laboratório/próprios**, dados fornecidos para treino e fontes cuja consulta seja permitida.
> **Proibido:** assédio, perseguição (*stalking*), *doxxing*, invasão de privacidade ou
> coleta abusiva de dados pessoais reais.

---

## Projeto 16 — Pesquisa OSINT com identidade e domínio fictícios

- **Cenário:** você pratica o **ciclo de OSINT** sobre um alvo **fictício/seu**, simulando uma
  investigação defensiva (ex.: superfície de exposição da sua própria "organização" de teste).
- **Objetivo:** coletar, **avaliar fontes**, validar, correlacionar e **preservar evidências**,
  documentando confiabilidade.
- **Pré-requisitos:** [Cap. 5](../../HANDBOOK.md#capitulo-5),
  [Cap. 19](../../HANDBOOK.md#capitulo-19).
- **Regras de segurança:** somente alvos fictícios/próprios; respeite a LGPD; nada de dados de
  pessoas reais.
- **Passos gerais:**
  1. Definir o alvo fictício (ex.: um domínio que você controla) e o objetivo defensivo.
  2. Levantar informações **conceituais**: DNS, certificados, presença pública, metadados de
     documentos de teste, possíveis exposições.
  3. Avaliar a confiabilidade de cada fonte e correlacionar achados.
  4. Preservar evidências (capturas datadas, hashes) e concluir com recomendações de redução
     de exposição.
- **Entregáveis:** relatório com fontes, nível de confiança, correlações e recomendações.
- **Critérios de conclusão:** você documenta origem/confiabilidade e articula onde estariam os
  limites legais/éticos se o alvo fosse real.
- **Perguntas de reflexão:** quando coletar dado "público" ainda viola privacidade/LGPD? Como o
  resultado mudaria a postura defensiva de uma organização?
- **Evidências:** capacidade investigativa + maturidade ética.
- **Extensões:** transformar achados em recomendações de *hardening* de exposição; integrar a
  threat intel ([Cap. 15](../../HANDBOOK.md#capitulo-15)).
- **O que NÃO fazer:** investigar pessoas reais; contornar autenticação; agregar dados pessoais
  de terceiros.

## Dados de exemplo (sintéticos — exposição de org fictícia)

```text
acme-lab.example -> dev.acme-lab.example (público), página de status, 1 repo público (sem segredos)
```

Mapeie a superfície pública com coleta **mínima**; registre confiança e uma recomendação.

## Rubrica de sucesso

- [ ] Apenas fontes públicas · [ ] coleta mínima · [ ] validação cruzada · [ ] privacidade
  respeitada · [ ] relatório com confiança.
