# Trilha: Windows

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/windows/README.md)

Capítulo: [Cap. 4](../../HANDBOOK.md#capitulo-4). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 5 — Hardening de uma máquina Windows

- **Cenário:** uma estação Windows de laboratório precisa de configuração segura e de
  *logging* adequado para detecção futura.
- **Objetivo:** aplicar hardening e habilitar telemetria de segurança.
- **Pré-requisitos:** [Cap. 4](../../HANDBOOK.md#capitulo-4); uma VM Windows com snapshot.
- **Regras de segurança:** VM própria; snapshot antes; rede isolada.
- **Passos gerais:**
  1. Inventariar contas, serviços, tarefas agendadas e privilégios.
  2. Aplicar menor privilégio (contas separadas para administração), atualizações, política
     de senhas/MFA quando aplicável.
  3. Habilitar *logging* avançado (eventos de logon, PowerShell *Script Block Logging*) e,
     se possível, **Sysmon** com uma configuração de referência.
  4. Comparar com uma *baseline* (CIS/Microsoft — ver [REFERENCIAS.md](../../REFERENCIAS.md)).
- **Entregáveis:** checklist antes/depois; lista das fontes de log habilitadas.
- **Critérios de conclusão:** você sabe onde ficam os logs relevantes e por que Sysmon e o
  log de PowerShell ajudam a detectar abuso (inclusive *living off the land*).
- **Perguntas de reflexão:** por que telemetria é parte do hardening? Como AD/Kerberos mudam o
  modelo de ameaça em rede corporativa?
- **Evidências para portfólio:** demonstra defesa.
- **Extensões:** integrar a estação a um lab de Active Directory (ver [red-team](../red-team/))
  e encaminhar logs ao SIEM (ver [blue-team](../blue-team/)).
- **O que NÃO fazer:** executar ataques contra domínios/máquinas que não sejam do seu
  laboratório.

## Dados de exemplo (sintéticos — eventos)

```text
4624 Logon user=svc-deploy type=3 src=10.0.0.9
4698 Tarefa agendada "updater" criada por svc-deploy
```

Triagem defensiva: qual artefato corrobora qual, e o que checaria a seguir?

## Rubrica de sucesso

- [ ] Event IDs-chave identificados · [ ] artefatos correlacionados · [ ] fato/indício/hipótese
  rotulados · [ ] achados documentados.
