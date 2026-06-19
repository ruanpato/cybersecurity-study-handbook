# Trilha: Linux

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/linux/README.md)

Capítulo: [Cap. 4](../../HANDBOOK.md#capitulo-4). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 4 — Hardening de uma máquina Linux

- **Cenário:** uma VM Linux recém-instalada precisa ser endurecida antes de ir "para
  produção" (no seu laboratório).
- **Objetivo:** aplicar uma *baseline* de segurança e documentar antes/depois.
- **Pré-requisitos:** [Cap. 4](../../HANDBOOK.md#capitulo-4); uma VM Linux com snapshot.
- **Regras de segurança:** faça em VM própria; snapshot antes; sem exposição à internet.
- **Passos gerais:**
  1. Inventariar serviços, usuários, portas abertas e permissões iniciais.
  2. Aplicar princípios: remover serviços desnecessários, menor privilégio, SSH por chave,
     desabilitar login root remoto, firewall, atualizações, habilitar auditoria.
  3. Revisar arquivos SUID/SGID e o uso do *sticky bit*.
  4. Comparar com uma referência de hardening (ex.: CIS Benchmark — ver
     [REFERENCIAS.md](../../REFERENCIAS.md)).
- **Entregáveis:** checklist preenchido (antes/depois), justificativa de cada mudança.
- **Critérios de conclusão:** você explica o risco que cada controle mitiga e por que SUID
  mal configurado pode permitir escalonamento.
- **Perguntas de reflexão:** o que você **não** endureceu e por quê (usabilidade vs
  segurança)? Como detectaria uma alteração indevida depois?
- **Evidências para portfólio:** demonstra defesa.
- **Extensões:** habilitar coleta de logs e enviá-los ao SIEM do
  [lab blue-team](../blue-team/); configurar auditoria detalhada.
- **O que NÃO fazer:** testar técnicas de escalonamento em máquinas que não sejam suas.

## Dados de exemplo (sintéticos — auth/cron)

```text
Mar 10 02:14 web01 sshd: Accepted publickey for svc-deploy from 10.0.0.9
Mar 10 02:15 web01 CRON (svc-deploy): CMD (/opt/updater.sh)
```

Investigue: o job de cron é esperado? Onde você confirmaria? (defensivo)

## Rubrica de sucesso

- [ ] Artefatos enumerados (proc/serviços/auth/cron) · [ ] fato vs indício vs hipótese ·
  [ ] checklist de investigação local seguido.
