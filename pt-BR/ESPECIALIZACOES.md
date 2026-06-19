# Especializações em Cibersegurança

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../en-US/SPECIALIZATIONS.md) · [README](README.md)

Mapa das principais áreas, com o que faz o profissional, conhecimentos, ferramentas, perfil,
dificuldade, profundidade técnica, demanda por programação/redes/SO, cargos, projetos de
portfólio, certificações potencialmente relevantes, *trade-offs* e como começar.

> **Aviso sobre certificações:** certificações **complementam**, não substituem experiência e
> portfólio. São citadas como referência de mercado; nenhuma é obrigatória, e a maioria não
> precisa ser feita cedo. Priorize fundamentos e evidências de trabalho real (ver
> [PORTFOLIO-E-CARREIRA.md](PORTFOLIO-E-CARREIRA.md)).

Legenda de demanda: **B** baixa · **M** média · **A** alta.

---

## Matriz comparativa (resumo)

| Área | Prog. | Redes | SO | Dificuldade inicial | Profundidade técnica |
|------|:----:|:----:|:--:|:-------------------:|:--------------------:|
| Pentest | M | A | A | Média | Alta |
| Red Team | A | A | A | Alta | Muito alta |
| Purple Team | M | A | A | Alta | Alta |
| Blue Team / SOC | M | A | A | Média | Alta |
| DFIR | M | A | A | Alta | Muito alta |
| Threat Hunting | M | A | A | Alta | Alta |
| Detection Engineering | A | A | A | Alta | Alta |
| AppSec | A | M | M | Alta | Alta |
| Product Security | A | M | M | Alta | Muito alta |
| Cloud Security | A | A | M | Média-Alta | Alta |
| Security Engineering | A | A | A | Alta | Alta |
| Security Architecture | M | A | A | Alta | Muito alta |
| Malware Analysis | A | M | A | Muito alta | Muito alta |
| Reverse Engineering | A | B | A | Muito alta | Muito alta |
| Vulnerability Research | A | M | A | Muito alta | Muito alta |
| Threat Intelligence | M | M | M | Média | Alta |
| DevSecOps | A | M | M | Média-Alta | Alta |
| IAM | M | M | M | Média | Alta |
| GRC | B | B | B | Baixa-Média | Média |
| Privacidade | B | B | B | Média | Média |
| Segurança Mobile | A | M | A | Alta | Alta |
| Segurança IoT/Hardware | A | M | A | Muito alta | Muito alta |

A seguir, o detalhamento por área.

---

> **Ofensivo vs defensivo, e ética.** As áreas ofensivas (Pentest, Red Team, Vulnerability
> Research, Reverse Engineering, Malware Analysis) exigem **autorização formal, escopo definido e
> regras de engajamento** — praticadas só em sistemas próprios, labs, CTFs ou alvos explicitamente
> autorizados ([HANDBOOK Cap. 0](HANDBOOK.md#capitulo-0)). Não é "hacking por esporte": a saída
> delas **alimenta a defesa** — relatórios de pentest geram correções, TTPs de red team viram
> detecções, análise de malware produz IOCs/YARA. As áreas defensivas (Blue Team/SOC, DFIR,
> Threat Hunting, Detection Engineering) consomem essa saída. Os melhores profissionais entendem
> os dois lados; construa uma base ampla antes de especializar.

## Pentest

- **O que faz:** avalia segurança de alvos autorizados, explora falhas para demonstrar
  impacto, entrega relatórios. (Ver [HANDBOOK Cap. 17](HANDBOOK.md#capitulo-17).)
- **Fundamentos:** redes, web/APIs, AD, Linux/Windows, metodologia (PTES, OWASP WSTG).
- **Ferramentas típicas:** scanners de rede/vulnerabilidade, proxies de interceptação web,
  frameworks de teste — usados em alvos autorizados.
- **Perfil:** curioso, metódico, bom comunicador (relatório é o produto).
- **Cargos:** pentester, consultor de segurança ofensiva.
- **Portfólio:** write-ups de CTF, relatórios de labs autorizados, projeto 14 e 20.
- **Certificações relevantes:** focadas em prática/laboratório de pentest (mercado as valoriza).
- **Trade-offs:** consultoria pode ser repetitiva; risco de virar "operador de scanner" sem
  fundamentos.
- **Como começar:** [Fase 4 do ROADMAP](ROADMAP.md#fase-4--pratica-ofensiva-autorizada);
  plataformas que autorizam testes.

## Red Team

- **O que faz:** emula adversários com objetivos, testando detecção/resposta da organização.
  (Ver [Cap. 18](HANDBOOK.md#capitulo-18).)
- **Fundamentos:** pentest + AD avançado + evasão (conceitual) + ATT&CK + OPSEC.
- **Perfil:** criativo, paciente, forte em fundamentos ofensivos e defensivos.
- **Cargos:** red teamer, adversary emulation engineer.
- **Portfólio:** exercícios purple team documentados, emulação de TTPs em lab.
- **Trade-offs:** alta barreira; exige base sólida e maturidade ética.
- **Como começar:** depois de pentest sólido; pratique purple team.

## Purple Team

- **O que faz:** roda red e blue **juntos** — emula uma TTP e melhora detecção/resposta na hora.
  (Ver [Cap. 18](HANDBOOK.md#capitulo-18).)
- **Fundamentos:** ATT&CK, detection engineering, base ofensiva, colaboração.
- **Ferramentas típicas:** ATT&CK Navigator, Sigma, SIEM/EDR, harnesses de emulação (lab).
- **Perfil:** colaborativo; traduz ofensiva ↔ defesa.
- **Papéis:** purple team engineer, red teamer focado em detecção.
- **Portfólio:** exercícios purple documentados (TTP → telemetria → melhoria de detecção).
- **Trade-offs:** exige fluência ofensiva e defensiva.
- **Como começar:** após pentest + base de blue team; rode o
  [exercício §18.4](HANDBOOK.md#capitulo-18) num lab.

## Blue Team / SOC

- **O que faz:** monitora, detecta e responde a incidentes. (Ver [Cap. 14](HANDBOOK.md#capitulo-14).)
- **Fundamentos:** logs, SIEM, EDR, redes, SO, ATT&CK.
- **Cargos:** analista SOC (N1–N3), engenheiro de monitoramento.
- **Portfólio:** SIEM caseiro, detecções, investigações simuladas (projetos 11–13).
- **Trade-offs:** plantões; risco de fadiga de alertas.
- **Como começar:** [Fase 3 do ROADMAP](ROADMAP.md#fase-3--pratica-defensiva).

## DFIR

- **O que faz:** investiga incidentes e faz forense preservando evidências. (Ver [Cap. 16](HANDBOOK.md#capitulo-16).)
- **Fundamentos:** SO em profundidade, artefatos, timelines, cadeia de custódia.
- **Cargos:** analista de resposta a incidentes, forense digital.
- **Portfólio:** investigação simulada com timeline e relatório (projeto 13).
- **Trade-offs:** pressão alta durante incidentes reais.
- **Como começar:** monte o [lab de dfir](labs-do-leitor/dfir/) com imagens de treino; estude o [Cap. 16](HANDBOOK.md#capitulo-16).

## Threat Hunting

- **O que faz:** busca proativa por ameaças não detectadas, guiada por hipóteses.
- **Fundamentos:** ATT&CK, dados de telemetria, estatística básica, blue team.
- **Cargos:** threat hunter.
- **Portfólio:** hunts documentados com hipótese→dados→conclusão.
- **Como começar:** após base de blue team, rode um hunt ([§14.8](HANDBOOK.md#capitulo-14)) sobre logs de exemplo.

## Detection Engineering

- **O que faz:** projeta, testa, versiona e mede detecções. (Ver [Cap. 14](HANDBOOK.md#capitulo-14).)
- **Fundamentos:** Sigma/YARA, fontes de log, programação, ATT&CK, testes.
- **Cargos:** detection engineer.
- **Portfólio:** repositório de detecções testadas e mapeadas (projeto 12, 19).
- **Como começar:** escreva e teste uma regra Sigma ([§14.9](HANDBOOK.md#capitulo-14)); mantenha detecções no git.

## AppSec

- **O que faz:** segurança de aplicações no ciclo de desenvolvimento. (Ver [Cap. 6](HANDBOOK.md#capitulo-6).)
- **Fundamentos:** programação forte, web/APIs, OWASP (Top 10/ASVS), threat modeling.
- **Cargos:** AppSec engineer, security champion.
- **Portfólio:** app vulnerável corrigida (projeto 6), threat model (projeto 7).
- **Trade-offs:** exige boa base de desenvolvimento.
- **Como começar:** corrija uma app vulnerável ([lab web-security](labs-do-leitor/web-security/)); estude o [Cap. 6](HANDBOOK.md#capitulo-6).

## Product Security

- **O que faz:** segurança ponta a ponta de um produto (design, código, infra, resposta).
- **Fundamentos:** AppSec + arquitetura + cloud + comunicação com engenharia.
- **Cargos:** product security engineer.
- **Trade-offs:** amplo; exige maturidade técnica e de produto.
- **Como começar:** construa fundamentos de AppSec + nuvem; faça o threat model de um produto pequeno fim a fim.

## Cloud Security

- **O que faz:** protege ambientes cloud (IAM, configuração, cargas). (Ver [Cap. 11](HANDBOOK.md#capitulo-11).)
- **Fundamentos:** um provedor a fundo, IAM, redes, IaC, containers.
- **Cargos:** cloud security engineer.
- **Portfólio:** revisão de arquitetura (projeto 17), IaC com checagens.
- **Certificações relevantes:** certificações de provedores cloud (associadas a segurança).
- **Como começar:** use o free tier de um provedor; faça o [lab de nuvem](labs-do-leitor/cloud-security/) e o [Cap. 11](HANDBOOK.md#capitulo-11).

## Security Engineering

- **O que faz:** constrói e opera controles e plataformas de segurança.
- **Fundamentos:** programação, SO, redes, automação, cloud.
- **Cargos:** security engineer, platform security.
- **Portfólio:** ferramentas defensivas, automações (projetos 8–9).
- **Como começar:** automatize um controle; construa projetos de ferramenta defensiva ([scripts](scripts/), [Cap. 13](HANDBOOK.md#capitulo-13)).

## Security Architecture

- **O que faz:** desenha sistemas seguros e define padrões. (Zero Trust — [Cap. 9/10](HANDBOOK.md#capitulo-10).)
- **Fundamentos:** amplitude técnica + risco + comunicação.
- **Cargos:** security architect.
- **Trade-offs:** menos "mão na massa"; mais decisão e influência.
- **Como começar:** após fundamentos amplos, projete e documente um sistema Zero-Trust pequeno ([Cap. 10](HANDBOOK.md#capitulo-10)).

## Malware Analysis

- **O que faz:** analisa código malicioso para extrair IOCs/detecções. (Ver [Cap. 23](HANDBOOK.md#capitulo-23).)
- **Fundamentos:** SO interno, formatos de binário, Assembly, sandboxing.
- **Portfólio:** análise de amostra **benigna**/treino + YARA (projeto 15).
- **Trade-offs:** exige laboratório isolado rigoroso; curva íngreme.
- **Como começar:** analise uma amostra benigna/de treino ([lab malware-analysis](labs-do-leitor/malware-analysis/), [Cap. 23](HANDBOOK.md#capitulo-23)).

## Reverse Engineering

- **O que faz:** entende binários sem o fonte. (Ver [Cap. 23](HANDBOOK.md#capitulo-23).)
- **Fundamentos:** Assembly, C, arquitetura, disassemblers/debuggers.
- **Trade-offs:** uma das curvas mais longas; alta profundidade.
- **Como começar:** aprenda Assembly + um disassembler; faça desafios de RE em CTF ([Cap. 23](HANDBOOK.md#capitulo-23)).

## Vulnerability Research

- **O que faz:** descobre vulnerabilidades novas (0-day) de forma ética/disclosure.
- **Fundamentos:** RE, exploração de memória, fuzzing, profundo em SO/compiladores.
- **Portfólio:** CVEs com disclosure responsável (ver [carreira](PORTFOLIO-E-CARREIRA.md)).
- **Trade-offs:** altíssima barreira; anos de fundamentos.
- **Como começar:** faça fuzzing de um parser toy ([§23.6](HANDBOOK.md#capitulo-23)); pratique divulgação coordenada.

## Threat Intelligence

- **O que faz:** produz inteligência sobre adversários. (Ver [Cap. 15](HANDBOOK.md#capitulo-15).)
- **Fundamentos:** análise, ATT&CK, STIX/TAXII, escrita, OSINT ético.
- **Cargos:** CTI analyst.
- **Portfólio:** relatórios analíticos com confiança declarada.
- **Como começar:** mapeie um incidente fictício ao ATT&CK ([§15.5–15.6](HANDBOOK.md#capitulo-15)); escreva notas de intel.

## DevSecOps

- **O que faz:** integra segurança a CI/CD e operações. (Ver [Cap. 13](HANDBOOK.md#capitulo-13).)
- **Fundamentos:** pipelines, IaC, SAST/SCA/DAST, automação.
- **Portfólio:** pipeline seguro (projeto 8), SBOM (projeto 9).
- **Como começar:** construa um pipeline seguro ([§13.5](HANDBOOK.md#capitulo-13), [lab supply-chain](labs-do-leitor/supply-chain/)).

## IAM

- **O que faz:** governa identidades e acessos. (Ver [Cap. 9](HANDBOOK.md#capitulo-9).)
- **Fundamentos:** protocolos (OAuth/OIDC/SAML), RBAC/ABAC, federação.
- **Cargos:** IAM engineer.
- **Como começar:** suba o Keycloak; implemente OIDC ([§9.7](HANDBOOK.md#capitulo-9)).

## GRC

- **O que faz:** governança, risco e conformidade. (Ver [Cap. 25](HANDBOOK.md#capitulo-25).)
- **Fundamentos:** frameworks (NIST CSF, ISO 27001, CIS), gestão de risco, comunicação.
- **Perfil:** organizado, bom em escrita e relacionamento; menor demanda por código.
- **Trade-offs:** menos técnico; muito impacto organizacional.
- **Como começar:** construa uma matriz de risco pequena ([§25.4](HANDBOOK.md#capitulo-25)); mapeie controles a um framework.

## Privacidade

- **O que faz:** protege dados pessoais e a conformidade (LGPD/GDPR). (Ver [Cap. 25](HANDBOOK.md#capitulo-25).)
- **Fundamentos:** legislação, privacy by design, fluxo de dados.
- **Cargos:** privacy engineer, DPO (apoio técnico).
- **Como começar:** mapeie um fluxo de dados e escreva um mini-RIPD ([§25.5](HANDBOOK.md#capitulo-25)).

## Segurança Mobile

- **O que faz:** segurança de apps iOS/Android. (Ver [Cap. 24](HANDBOOK.md#capitulo-24).)
- **Fundamentos:** plataformas móveis, armazenamento, APIs, RE de apps.
- **Como começar:** analise seu próprio app num emulador; siga MASVS/MASTG ([Cap. 24](HANDBOOK.md#capitulo-24)).

## Segurança IoT / Hardware

- **O que faz:** segurança de firmware e dispositivos. (Ver [Cap. 24](HANDBOOK.md#capitulo-24).)
- **Fundamentos:** embarcados, UART/JTAG, Secure Boot, RE, eletrônica básica.
- **Trade-offs:** exige hardware e RE; curva longa.

---

- **Como começar:** faça o threat model de um dispositivo na sua bancada; siga o OWASP IoT ([Cap. 24](HANDBOOK.md#capitulo-24)).

## Como escolher

1. **Não escolha cedo demais.** Construa fundamentos (Fases 1–5) antes de afunilar.
2. **Siga o perfil:** gosta de construir? Engenharia/AppSec/DevSecOps. De investigar?
   DFIR/Threat Hunting/Malware. De quebrar (autorizado)? Pentest/Red/VulnRes. De organizar e
   comunicar? GRC/Privacidade/Arquitetura.
3. **Valide com projetos** (ver [PORTFOLIO-E-CARREIRA.md](PORTFOLIO-E-CARREIRA.md)) antes de
   se comprometer.
4. **Áreas se cruzam:** purple team une red e blue; cloud cruza tudo. Especialista bom tem
   uma base larga e uma ponta profunda ("T-shaped").
