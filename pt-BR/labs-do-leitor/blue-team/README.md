# Trilha: Blue Team

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/blue-team/README.md)

Capítulo: [Cap. 14](../../HANDBOOK.md#capitulo-14). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 11 — Centralização de logs em um SIEM local

- **Cenário:** sem visibilidade não há detecção. Você precisa centralizar logs do laboratório.
- **Objetivo:** subir um **SIEM local** e ingerir logs das VMs (Linux do
  [Projeto 4](../linux/) e Windows/Sysmon do [Projeto 5](../windows/)).
- **Pré-requisitos:** [Cap. 4](../../HANDBOOK.md#capitulo-4),
  [Cap. 14](../../HANDBOOK.md#capitulo-14); laboratório montado.
- **Regras de segurança:** tudo em rede isolada; logs sintéticos/próprios.
- **Passos gerais:** instalar um SIEM local; configurar coleta nas VMs; normalizar campos;
  validar a ingestão; criar um painel básico.
- **Entregáveis:** SIEM funcional com fontes documentadas e um painel.
- **Critérios de conclusão:** logs de Linux e Windows chegam normalizados e pesquisáveis.
- **Perguntas de reflexão:** quais fontes dão maior valor de detecção? O que falta para cobrir
  o ATT&CK?
- **Evidências:** demonstra defesa. **Extensões:** alimentar os Projetos 12 e 19.

---

## Projeto 12 — Criação de regras Sigma

- **Cenário:** você quer detecções **portáveis** e versionadas.
- **Objetivo:** escrever regras **Sigma** para comportamentos suspeitos e testá-las com dados
  de exemplo.
- **Pré-requisitos:** Projeto 11; noções de Sigma e ATT&CK.
- **Regras de segurança:** use dados de exemplo/sintéticos.
- **Passos gerais:** escolher comportamentos (ex.: criação de serviço suspeito, uso anômalo de
  PowerShell); escrever a regra; testar com logs de exemplo; mapear ao ATT&CK; avaliar falsos
  positivos.
- **Entregáveis:** repositório de regras com testes e mapeamento.
- **Critérios de conclusão:** a regra dispara no caso esperado e você discute seus falsos
  positivos/negativos.
- **Perguntas de reflexão:** como reduzir falsos positivos sem criar falsos negativos?
- **Evidências:** defesa + desenvolvimento.

---

## Projeto 19 — Projeto de detecção mapeado ao MITRE ATT&CK

- **Cenário:** transformar detecção em **engenharia** com cobertura medível.
- **Objetivo:** construir um pequeno catálogo de detecções mapeado ao ATT&CK, com testes e
  métricas de cobertura.
- **Pré-requisitos:** Projetos 11–12; idealmente, emulação controlada do
  [purple team](../red-team/).
- **Passos gerais:** selecionar técnicas ATT&CK relevantes ao seu lab; escrever/testar
  detecções; medir cobertura; documentar lacunas e plano de melhoria.
- **Entregáveis:** matriz de cobertura + detecções testadas.
- **Critérios de conclusão:** você demonstra cobertura e lacunas com evidência de teste.
- **Perguntas de reflexão:** detecção por assinatura vs comportamento — onde cada uma falha?
- **Evidências:** defesa + desenvolvimento.
- **O que NÃO fazer (toda a trilha):** usar telemetria de terceiros; tratar alerta sem
  contexto como verdade.

## Dados de exemplo (sintéticos)

```text
2026-03-10T09:01Z host=ws07 user=jdoe event=login result=fail count=12 window=2m
2026-03-10T09:02Z host=ws07 user=jdoe event=login result=success src=10.0.0.7
2026-03-10T09:05Z host=ws07 proc=powershell parent=winword.exe cmd="-enc <omitido>"
```

Faça a triagem (qual é suspeito e por quê?) e esboce uma ideia de detecção.

## Rubrica de sucesso

- [ ] Cada alerta triado com contexto · [ ] verdadeiro/falso-positivo decidido · [ ] detecção
  mapeada ao ATT&CK · [ ] decisão documentada.
