# Roteiro Progressivo de Estudos

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../en-US/ROADMAP.md) · [README](README.md)

Trilha por fases, do zero à especialização. Cada fase indica duração aproximada, carga
horária, pré-requisitos, conteúdos, laboratórios/projetos, entregáveis, critérios de
conclusão, cargos relacionados, erros comuns e quando revisar. Use junto ao
[HANDBOOK.md](HANDBOOK.md) e ao [CHECKLIST-DE-PROGRESSO.md](CHECKLIST-DE-PROGRESSO.md).

> **Expectativa realista.** As durações pressupõem alguém em graduação, estudando em paralelo
> às disciplinas, com ~8–12 h/semana dedicadas. Não há atalho para especialização profunda
> (ver [os seis estágios no HANDBOOK](HANDBOOK.md#sobre-este-livro)). Os números são ordens de
> grandeza, não promessas.

---

## Visão geral das fases

| Fase | Foco | Duração típica |
|------|------|----------------|
| 0 | Preparação e ética | 2–4 semanas |
| 1 | Fundamentos computacionais | 4–8 meses |
| 2 | Fundamentos de segurança | 3–5 meses |
| 3 | Prática defensiva | 4–6 meses |
| 4 | Prática ofensiva autorizada | 4–6 meses |
| 5 | Engenharia de segurança | 4–6 meses |
| 6 | Especialização | 12+ meses (contínuo) |
| 7 | Construção de autoridade técnica | contínuo, por anos |

As fases se sobrepõem na prática (você revisa fundamentos enquanto avança). A ordem é
pedagógica, não rígida.

---

## Fase 0 — Preparação e ética

- **Duração:** 2–4 semanas · **Carga:** ~6–10 h/semana.
- **Pré-requisitos:** nenhum.
- **Conteúdos:** [Capítulo 0](HANDBOOK.md#capitulo-0) (ética, legalidade, autorização,
  divulgação responsável), método científico/documentação, [Git](HANDBOOK.md#capitulo-2),
  e montagem do [laboratório seguro (Cap. 1)](HANDBOOK.md#capitulo-1).
- **Laboratórios/projetos:** Projeto 1 — montar e documentar o laboratório
  ([labs-do-leitor/fundamentos/](labs-do-leitor/fundamentos/)).
- **Entregáveis:** laboratório funcionando com snapshots; repositório Git de estudos; um
  documento de "regras de engajamento pessoais".
- **Critério de conclusão:** você cria/restaura snapshots, versiona em Git sem vazar
  segredos e explica autorização e divulgação coordenada.
- **Cargos relacionados:** (pré-profissional).
- **Erros comuns:** pular a ética; expor VMs vulneráveis à internet; não documentar.
- **Quando revisar:** sempre que iniciar qualquer atividade ofensiva.

## Fase 1 — Fundamentos computacionais

- **Duração:** 4–8 meses · **Carga:** ~10 h/semana.
- **Pré-requisitos:** Fase 0.
- **Conteúdos:** [Cap. 2](HANDBOOK.md#capitulo-2) (CC), [Cap. 3](HANDBOOK.md#capitulo-3)
  (programação: Python+Bash primeiro), [Cap. 4](HANDBOOK.md#capitulo-4) (Linux e Windows),
  [Cap. 5](HANDBOOK.md#capitulo-5) (redes), [Cap. 7](HANDBOOK.md#capitulo-7) (bancos),
  [Cap. 6](HANDBOOK.md#capitulo-6) (fundamentos de web).
- **Laboratórios/projetos:** Projetos 2 (analisador de logs), 3 (captura HTTP/TLS),
  4 (hardening Linux), 5 (hardening Windows).
- **Entregáveis:** scripts no GitHub com README e testes; capturas comentadas; checklists de
  hardening preenchidos.
- **Critério de conclusão:** você lê um pacote, escreve um parser de logs, faz hardening
  básico de Linux/Windows e modela permissões de banco.
- **Cargos relacionados:** estágio em TI/infra, suporte, júnior de operações.
- **Erros comuns:** correr para "hacking" sem base de redes/SO; decorar comandos sem entender.
- **Quando revisar:** continuamente; fundamentos sustentam todo o resto.

> **Nota para o iniciante absoluto:** se você está começando a programar do zero, considere
> 6–8 meses como o piso realista para a Fase 1, e avalie dividi-la (programação + SO primeiro;
> redes + web + bancos depois).

## Fase 2 — Fundamentos de segurança

- **Duração:** 3–5 meses · **Carga:** ~10 h/semana.
- **Pré-requisitos:** Fase 1.
- **Conteúdos:** [Cap. 8](HANDBOOK.md#capitulo-8) (criptografia),
  [Cap. 9](HANDBOOK.md#capitulo-9) (IAM), [Cap. 10](HANDBOOK.md#capitulo-10) (fundamentos:
  risco, ATT&CK, kill chain), threat modeling, logging, gestão de vulnerabilidades.
- **Laboratórios/projetos:** Projeto 6 (web vulnerável local + correção), Projeto 7 (threat
  model de uma aplicação).
- **Entregáveis:** relatório de correções; documento de threat model (STRIDE).
- **Critério de conclusão:** você classifica risco, modela ameaças e corrige falhas web
  comuns explicando causa-raiz.
- **Cargos relacionados:** analista de segurança júnior, GRC júnior.
- **Erros comuns:** tratar criptografia como "matemágica"; ignorar autorização nos labs web.
- **Quando revisar:** antes das Fases 3 e 4.

<a id="fase-3--pratica-defensiva"></a>

## Fase 3 — Prática defensiva

- **Duração:** 4–6 meses · **Carga:** ~10–12 h/semana.
- **Pré-requisitos:** Fases 1–2.
- **Conteúdos:** [Cap. 14](HANDBOOK.md#capitulo-14) (blue team, SIEM, detection engineering),
  [Cap. 16](HANDBOOK.md#capitulo-16) (DFIR), [Cap. 15](HANDBOOK.md#capitulo-15) (threat intel),
  threat hunting, resposta a incidentes.
- **Laboratórios/projetos:** Projetos 11 (SIEM local), 12 (regras Sigma), 13 (investigação de
  incidente simulado).
- **Entregáveis:** regras de detecção versionadas e testadas; relatório de incidente com
  timeline.
- **Critério de conclusão:** você ingere logs num SIEM, escreve detecções mapeadas ao ATT&CK e
  investiga um incidente simulado preservando evidências.
- **Cargos relacionados:** analista SOC (N1/N2), analista de detecção júnior, DFIR júnior.
- **Erros comuns:** focar em ferramenta e não em fonte de log; detecções sem teste.
- **Quando revisar:** após a Fase 4 (purple team conecta as duas).

<a id="fase-4--pratica-ofensiva-autorizada"></a>

## Fase 4 — Prática ofensiva autorizada

- **Duração:** 4–6 meses · **Carga:** ~10–12 h/semana.
- **Pré-requisitos:** Fases 1–3 e [Cap. 0](HANDBOOK.md#capitulo-0) (obrigatório).
- **Conteúdos:** [Cap. 17](HANDBOOK.md#capitulo-17) (metodologia de pentest),
  [Cap. 6](HANDBOOK.md#capitulo-6) (web/APIs), redes, **Active Directory**
  ([Cap. 4](HANDBOOK.md#capitulo-4)), cloud ([Cap. 11](HANDBOOK.md#capitulo-11)), relatórios.
- **Laboratórios/projetos:** Projeto 10 (lab de AD), Projeto 14 (relatório de pentest de
  ambiente **autorizado** de laboratório), prática em plataformas que autorizam testes.
- **Entregáveis:** relatórios técnico e executivo; write-ups de CTF responsáveis.
- **Critério de conclusão:** você conduz recon→enumeração→validação em alvo autorizado,
  classifica por CVSS e entrega relatório profissional.
- **Cargos relacionados:** pentester júnior, analista de AppSec júnior, bug bounty iniciante.
- **Erros comuns:** sair do escopo; confundir "rodei o scanner" com pentest; relatório fraco.
- **Quando revisar:** continuamente, com purple team (Fase 6).

## Fase 5 — Engenharia de segurança

- **Duração:** 4–6 meses · **Carga:** ~10–12 h/semana.
- **Pré-requisitos:** Fases 1–4.
- **Conteúdos:** [Cap. 6](HANDBOOK.md#capitulo-6) (AppSec), [Cap. 11](HANDBOOK.md#capitulo-11)
  (CloudSec), [Cap. 12](HANDBOOK.md#capitulo-12) (containers/k8s),
  [Cap. 13](HANDBOOK.md#capitulo-13) (DevSecOps e supply chain), arquitetura e
  [Zero Trust (Cap. 9/10)](HANDBOOK.md#capitulo-9).
- **Laboratórios/projetos:** Projetos 8 (CI/CD com checagens de segurança), 9 (SBOM),
  17 (revisão de arquitetura cloud), 18 (simulação defensiva de ataque de supply chain).
- **Entregáveis:** pipeline com SAST/SCA/DAST; SBOM analisado; documento de arquitetura segura.
- **Critério de conclusão:** você integra segurança a um pipeline, gera/analisa SBOM e revisa
  uma arquitetura cloud apontando riscos.
- **Cargos relacionados:** security engineer, AppSec engineer, cloud security engineer,
  DevSecOps.
- **Erros comuns:** segurança "no fim" do pipeline; ignorar identidade/IAM.
- **Quando revisar:** ao escolher especialização (Fase 6).

## Fase 6 — Especialização

- **Duração:** 12+ meses, contínua · **Carga:** variável.
- **Pré-requisitos:** Fases 1–5 (ao menos sólidas).
- **Conteúdos:** escolha uma trilha em [ESPECIALIZACOES.md](ESPECIALIZACOES.md) — red team,
  blue team, AppSec, cloud security, DFIR, malware/RE, threat intel, detection engineering,
  security/product engineering, vulnerability research, GRC, privacidade, mobile/IoT.
- **Laboratórios/projetos:** Projetos 15 (análise estática benigna), 16 (OSINT fictício),
  19 (detecção mapeada ao ATT&CK), além de projetos específicos da trilha.
- **Entregáveis:** portfólio profundo em uma área; contribuições open source; write-ups.
- **Critério de conclusão:** você resolve problemas não triviais em uma subárea e produz
  conteúdo que outros consultam.
- **Cargos relacionados:** especialista/pleno na trilha escolhida.
- **Erros comuns:** dispersão (querer ser tudo); colecionar certificações sem prática.
- **Quando revisar:** revisite fundamentos quando encontrar lacunas — elas reaparecem.

## Fase 7 — Construção de autoridade técnica

- **Duração:** contínua, por anos · **Carga:** integrada ao trabalho.
- **Pré-requisitos:** proficiência (estágio 4+).
- **Conteúdos:** escrita (artigos, papers, write-ups), palestras, open source, **responsible
  disclosure** e CVEs, comunidades, mentoria, produção de ferramentas, estudos de caso e
  comunicação executiva. Detalhes em [PORTFOLIO-E-CARREIRA.md](PORTFOLIO-E-CARREIRA.md).
- **Entregáveis:** corpo de trabalho público e verificável; reputação.
- **Critério de conclusão:** (não há "fim" — é a fase de referência técnica).
- **Erros comuns:** confundir presença em redes sociais com autoridade técnica; negligenciar
  ética.

---

<a id="planos-sugeridos-por-horizonte"></a>

## Planos sugeridos por horizonte

### Plano de 12 meses (base sólida + primeira prática)

- Meses 1: Fase 0.
- Meses 2–7: Fase 1 (fundamentos), com Projetos 1–5.
- Meses 8–10: Fase 2 (fundamentos de segurança), Projetos 6–7.
- Meses 11–12: início da Fase 3 (defensiva), Projeto 11 (SIEM).
- **Estágio esperado ao fim:** entre 1 e 2 (introdutório → competência prática). Pronto para
  estágio/júnior em áreas de operação/suporte com viés de segurança.

### Plano de 24 meses (prontidão para 1ª vaga em segurança)

- Continuação do ano 1.
- Meses 13–18: concluir Fase 3 e fazer Fase 4 (ofensiva autorizada), Projetos 10, 12–14.
- Meses 19–24: Fase 5 (engenharia de segurança), Projetos 8–9, 17–18; iniciar escolha de
  trilha.
- **Estágio esperado:** 2→3 (prontidão para primeira vaga). Portfólio com defesa + ofensiva +
  engenharia.

### Plano de 36 meses (especialização inicial)

- Anos 1–2 conforme acima.
- Meses 25–36: Fase 6 numa trilha escolhida; Projetos 15, 16, 19 e específicos; Projeto 20
  (final integrado: ataque autorizado → detecção → resposta → correção). Começar Fase 7
  (write-ups, comunidade, open source).
- **Estágio esperado:** 3→4 (proficiência inicial em uma subárea). Atuando profissionalmente e
  aprofundando.

### Desenvolvimento contínuo (após 36 meses)

Especialização profunda (estágios 5–6) leva **anos** adicionais: prática deliberada,
pesquisa, escrita, disclosure responsável, mentoria e contribuição à comunidade. Reavalie
metas a cada 6–12 meses (ver avaliações periódicas no
[CHECKLIST-DE-PROGRESSO.md](CHECKLIST-DE-PROGRESSO.md)).

---

## Consistência com os demais documentos

- Os **capítulos** citados existem no [HANDBOOK.md](HANDBOOK.md).
- Os **projetos numerados (1–20)** estão descritos em [labs-do-leitor/](labs-do-leitor/) e
  resumidos em [PORTFOLIO-E-CARREIRA.md](PORTFOLIO-E-CARREIRA.md).
- Os **níveis de domínio** e as **avaliações periódicas** estão em
  [CHECKLIST-DE-PROGRESSO.md](CHECKLIST-DE-PROGRESSO.md).
