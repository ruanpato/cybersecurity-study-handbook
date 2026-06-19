# Portfólio e Carreira

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../en-US/PORTFOLIO-AND-CAREER.md) · [README](README.md)

Como evoluir de estudante para profissional respeitado e, com o tempo, referência técnica.
Este documento conecta os [projetos](#os-20-projetos) ao [ROADMAP.md](ROADMAP.md), às
[especializações](ESPECIALIZACOES.md) e aos [seis estágios do HANDBOOK](HANDBOOK.md#sobre-este-livro).

> **Premissa honesta:** autoridade técnica não vem de acumular cursos ou seguidores. Vem de
> **resolver problemas reais, documentar e compartilhar de forma ética** — ao longo de anos.
> Ferramentas não substituem fundamentos; executar comandos não é o mesmo que dominar.

---

## 1. O que é um bom portfólio

Um portfólio demonstra **capacidades**, não apenas atividades. Para cada projeto, mostre:
problema, abordagem, decisões, resultado, evidências e o que você aprenderia/faria diferente.
Sete capacidades que um bom portfólio evidencia:

1. **Fundamentos** (entende o porquê, não só o como).
2. **Capacidade investigativa** (DFIR, hunting, análise).
3. **Capacidade de defesa** (detecção, hardening, resposta).
4. **Capacidade de desenvolvimento** (escreve código limpo e testado).
5. **Capacidade de documentação** (write-ups claros e reproduzíveis).
6. **Capacidade de arquitetura** (desenha soluções, pensa em risco/blast radius).
7. **Capacidade de comunicação** (técnica e executiva).

---

## 2. Canais e práticas

- **GitHub:** repositórios organizados, com READMEs, testes e licenças. Histórico limpo, sem
  segredos (ver [HANDBOOK Cap. 2](HANDBOOK.md#capitulo-2)).
- **Relatórios técnicos:** pratique o formato de pentest/incidente (ver
  [Cap. 17](HANDBOOK.md#capitulo-17) e [16](HANDBOOK.md#capitulo-16)).
- **Write-ups responsáveis:** de CTFs e labs — **nunca** de sistemas reais sem autorização;
  respeite regras de plataformas e disclosure.
- **Blog/artigos:** explicar algo ensina você e demonstra domínio.
- **Palestras/meetups e comunidades:** participe, depois contribua.
- **CTFs:** treinam habilidade e geram write-ups. Comece por desafios introdutórios.
- **Open source:** contribua com ferramentas defensivas, detecções, documentação.
- **Conferências:** assista, faça anotações públicas, depois submeta propostas.
- **Mentoria e networking:** ensinar consolida; rede abre portas — com ética.
- **Inglês técnico e leitura de papers:** a maior parte do conhecimento de ponta está em
  inglês; aprenda a ler papers e documentação primária.

---

## 3. Responsible disclosure e CVEs

Descobrir uma falha real em software de terceiros é valioso **se** tratada eticamente
(ver [HANDBOOK Cap. 0](HANDBOOK.md#capitulo-0)): reporte de forma privada e coordenada, sem
exfiltrar dados, sem extorsão. Um CVE com disclosure responsável é um forte sinal de
proficiência — mas é consequência de anos de fundamentos, não um atalho inicial.

---

## 4. Comunicação: técnica e executiva

- **Técnica:** precisa, reproduzível, com evidências.
- **Executiva:** traduz risco em impacto de negócio, sem jargão, com recomendações
  priorizadas. Saber as duas é um diferencial raro e bem pago.

---

## 5. Como evitar parecer "apenas operador de ferramentas"

- Explique **o que** a ferramenta faz por baixo (protocolo, falha, mecanismo).
- Mostre que você diagnostica quando a ferramenta falha.
- Prefira entender uma vulnerabilidade a "rodar o scanner".
- Documente decisões e *trade-offs*, não só comandos executados.

---

## 6. Da escola à referência (estágios)

Releia [os seis estágios no HANDBOOK](HANDBOOK.md#sobre-este-livro). Resumo do caminho:

1. Fundamentos + labs documentados → **portfólio inicial** (estágios 1–2).
2. Projeto integrado + CTFs + primeiro emprego → **prontidão/júnior** (estágio 3).
3. Experiência real + write-ups + especialização → **proficiência** (estágio 4).
4. Pesquisa, ferramentas, talks, disclosure, mentoria → **especialista/referência**
   (estágios 5–6), ao longo de **anos**.

---

<a id="os-20-projetos"></a>

## 7. Os 20 projetos práticos (sequência progressiva)

Descrições completas (cenário, objetivos, pré-requisitos, regras de segurança, passos,
entregáveis, critérios, evidências, extensões e "o que não fazer") estão em
[labs-do-leitor/](labs-do-leitor/), por trilha. Aqui, o mapa e a capacidade que cada um
evidencia. **Nenhuma solução é entregue pronta** — a implementação é sua.

| # | Projeto | Trilha (lab) | Evidencia | Fase ROADMAP |
|---|---------|--------------|-----------|:------------:|
| 1 | Montar e documentar o laboratório | [fundamentos](labs-do-leitor/fundamentos/) | Fundamentos, documentação | 0 |
| 2 | Analisador de logs em Python | [programacao](labs-do-leitor/programacao/) | Desenvolvimento | 1 |
| 3 | Captura e explicação de HTTP e TLS | [redes](labs-do-leitor/redes/) | Fundamentos, investigação | 1 |
| 4 | Hardening de máquina Linux | [linux](labs-do-leitor/linux/) | Defesa | 1 |
| 5 | Hardening de máquina Windows | [windows](labs-do-leitor/windows/) | Defesa | 1 |
| 6 | App web vulnerável local + correção | [web-security](labs-do-leitor/web-security/) | Desenvolvimento, defesa | 2 |
| 7 | Threat model de uma aplicação | [appsec](labs-do-leitor/appsec/) | Arquitetura | 2 |
| 8 | Pipeline CI/CD com checagens de segurança | [supply-chain](labs-do-leitor/supply-chain/) | Desenvolvimento, arquitetura | 5 |
| 9 | Geração e análise de SBOM | [supply-chain](labs-do-leitor/supply-chain/) | Investigação, defesa | 5 |
| 10 | Laboratório de Active Directory | [red-team](labs-do-leitor/red-team/) | Fundamentos, defesa | 4 |
| 11 | Centralização de logs em SIEM local | [blue-team](labs-do-leitor/blue-team/) | Defesa | 3 |
| 12 | Criação de regras Sigma | [blue-team](labs-do-leitor/blue-team/) | Defesa, desenvolvimento | 3 |
| 13 | Investigação de incidente simulado | [dfir](labs-do-leitor/dfir/) | Investigação, comunicação | 3 |
| 14 | Relatório de pentest (lab autorizado) | [red-team](labs-do-leitor/red-team/) | Ofensiva autorizada, comunicação | 4 |
| 15 | Análise estática de arquivo benigno | [malware-analysis](labs-do-leitor/malware-analysis/) | Investigação | 6 |
| 16 | OSINT com identidade/domínio fictícios | [osint](labs-do-leitor/osint/) | Investigação, ética | 6 |
| 17 | Revisão de segurança de arquitetura cloud | [cloud-security](labs-do-leitor/cloud-security/) | Arquitetura, defesa | 5 |
| 18 | Simulação defensiva de ataque de supply chain | [supply-chain](labs-do-leitor/supply-chain/) | Defesa, arquitetura | 5 |
| 19 | Projeto de detecção mapeado ao ATT&CK | [blue-team](labs-do-leitor/blue-team/) | Defesa, desenvolvimento | 6 |
| 20 | Projeto final: ataque autorizado → detecção → resposta → correção | [projeto-final](labs-do-leitor/projeto-final/) | Todas | 6 |

O **Projeto 20** é o portfólio-síntese: demonstra todas as capacidades em um cenário
integrado e é o melhor cartão de visitas para uma primeira vaga.

---

## 8. Currículo e entrevistas (orientações gerais)

- Liste **resultados e capacidades**, não só ferramentas.
- Inclua links para repositórios e write-ups.
- Em entrevistas técnicas, explique **mecanismos** e **decisões**, não apenas comandos.
- Demonstre maturidade ética: escopo, autorização, manuseio de dados.

A construção de reputação é lenta e cumulativa. Consistência e ética valem mais que
visibilidade momentânea.
