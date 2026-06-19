# Trilha: Red Team (ofensiva autorizada)

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/red-team/README.md)

Capítulos: [Cap. 17–18](../../HANDBOOK.md#capitulo-17). **Releia obrigatoriamente o
[Capítulo 0](../../HANDBOOK.md#capitulo-0).** Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

> **Pré-condição inegociável:** toda atividade ofensiva ocorre **apenas** em laboratório
> próprio e isolado, ou em plataformas/ranges que **autorizam explicitamente** os testes em
> seus alvos. Nunca contra sistemas de terceiros.

---

## Projeto 10 — Laboratório de Active Directory

- **Cenário:** redes corporativas giram em torno do AD; você precisa de um para estudar
  ataque e, sobretudo, **defesa**.
- **Objetivo:** montar um AD de laboratório (controlador de domínio + estações) e entender sua
  estrutura, autenticação (Kerberos/NTLM) e telemetria.
- **Pré-requisitos:** [Cap. 4](../../HANDBOOK.md#capitulo-4); VMs Windows; lab isolado.
- **Regras de segurança:** rede isolada, sem internet; snapshots; credenciais descartáveis.
- **Passos gerais:** promover um DC; ingressar estações; criar usuários/grupos/GPOs;
  habilitar logging (eventos de logon, Sysmon) e encaminhar ao SIEM (ver
  [blue-team](../blue-team/)).
- **Entregáveis:** documentação do domínio e das fontes de log.
- **Critérios de conclusão:** você explica domínio/floresta, Kerberos vs NTLM e onde observar
  eventos relevantes.
- **Perguntas de reflexão:** quais eventos indicariam abuso de Kerberos? Como o *Tiering* de
  administração reduz risco?
- **Evidências:** fundamentos + defesa.
- **O que NÃO fazer:** importar técnicas ofensivas operacionais para fora do lab.

---

## Projeto 14 — Relatório de pentest de ambiente autorizado

- **Cenário:** você conduz um teste em um **alvo de laboratório autorizado** e precisa
  entregar um relatório profissional.
- **Objetivo:** aplicar a metodologia do [Cap. 17](../../HANDBOOK.md#capitulo-17)
  (recon→enumeração→validação→exploração controlada→relatório) e produzir relatórios técnico e
  executivo.
- **Pré-requisitos:** Fases 1–4 do [ROADMAP](../../ROADMAP.md); alvo autorizado (seu lab ou
  plataforma que autoriza).
- **Regras de segurança:** escopo e "regras de engajamento" escritos **antes**; manter-se no
  escopo; coletar evidências sem causar dano além do necessário.
- **Passos gerais:** definir escopo/ROE; reconhecimento e enumeração; validar
  vulnerabilidades; exploração controlada; classificar por **CVSS**; escrever recomendações;
  prever reteste.
- **Entregáveis:** relatório técnico + resumo executivo + apêndice de evidências.
- **Critérios de conclusão:** achados reproduzíveis, severidade justificada e recomendações
  acionáveis; resumo executivo compreensível por não técnicos.
- **Perguntas de reflexão:** como você comunicaria o mesmo achado a um engenheiro e a um
  diretor? Onde estava o maior risco de negócio?
- **Evidências:** ofensiva autorizada + comunicação.
- **Extensões:** transformar em ciclo **purple team** com a [blue-team](../blue-team/):
  emular uma técnica, verificar detecção, ajustar.
- **O que NÃO fazer:** sair do escopo; testar terceiros; vazar evidências; "rodar o scanner" e
  chamar de pentest.

## Rubrica de sucesso (write-up de purple team)

- [ ] Autorização & escopo por escrito · [ ] TTP mapeada ao ATT&CK · [ ] telemetria esperada ·
  [ ] resultado da detecção · [ ] melhoria de controle.
