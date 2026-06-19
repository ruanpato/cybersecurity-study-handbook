# Trilha: DFIR

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/dfir/README.md)

Capítulo: [Cap. 16](../../HANDBOOK.md#capitulo-16). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 13 — Investigação de um incidente simulado

- **Cenário:** um "incidente" ocorreu no seu laboratório (você mesmo encena, ou usa um
  conjunto de dados de treino) e precisa ser investigado.
- **Objetivo:** aplicar o ciclo do **NIST SP 800-61** e produzir uma *timeline* e um relatório,
  preservando integridade das evidências.
- **Pré-requisitos:** [Cap. 16](../../HANDBOOK.md#capitulo-16); logs do laboratório (ver
  [blue-team](../blue-team/)) ou dataset de treino.
- **Regras de segurança:** use **apenas** dados de treino ou do seu lab; **nunca** dados reais
  de terceiros; calcule *hashes* para garantir integridade; respeite cadeia de custódia.
- **Passos gerais:**
  1. Preparação: definir o que coletar e em que ordem (volatilidade).
  2. Identificação/análise: correlacionar logs e artefatos.
  3. Construir a *timeline*.
  4. Contenção/erradicação/recuperação (no lab) e lições aprendidas.
- **Entregáveis:** relatório de incidente com timeline, IOCs e recomendações; registro de
  cadeia de custódia.
- **Critérios de conclusão:** você reconstrói a sequência de eventos e prova integridade por
  hash.
- **Perguntas de reflexão:** o que coletaria primeiro e por quê (ordem de volatilidade)? O que
  comunicaria às áreas jurídica e executiva?
- **Evidências:** capacidade investigativa + comunicação.
- **Extensões:** *network forensics* a partir de uma captura do [lab de redes](../redes/);
  análise de artefatos de Windows/Linux.
- **O que NÃO fazer:** manusear dados pessoais reais; alterar evidências originais (trabalhe
  sobre cópias).

## Dados de exemplo (sintéticos — cole num arquivo para começar)

```text
2026-03-10T02:14:07Z host=web01 user=svc-deploy action=login result=success src_asn=AS65000
2026-03-10T02:15:31Z host=web01 user=svc-deploy action=schtask.create name=updater
2026-03-10T02:16:50Z host=web01 proxy=allow dst=newdomain.example interval=60s bytes=512
2026-03-10T02:31:12Z host=db01  user=svc-deploy action=db.read table=customers rows=48211
2026-03-10T03:02:44Z host=cloud action=iam.createAccessKey principal=svc-deploy
```

Monte uma timeline em UTC a partir destes eventos, rotule cada um como fato/inferência/hipótese e
identifique o provável acesso inicial e os pivôs. (Dados sintéticos — não é um incidente real.)

## Rubrica de sucesso

- [ ] Timeline em UTC com coluna de confiança.
- [ ] Fato vs inferência vs hipótese rotulados.
- [ ] Integridade da evidência demonstrada (hash do arquivo-fonte).
- [ ] Relatório com IOCs + recomendações + resumo executivo.
