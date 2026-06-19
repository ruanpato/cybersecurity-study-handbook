# Trilha: Fundamentos

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/fundamentals/README.md)

Capítulos: [Cap. 0–2](../../HANDBOOK.md#capitulo-1). Siga as
[regras de segurança gerais](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 1 — Montar e documentar o laboratório

- **Cenário:** você precisa de um ambiente isolado, reproduzível e seguro para todos os
  estudos seguintes.
- **Objetivo:** montar a topologia do [Capítulo 1](../../HANDBOOK.md#capitulo-1) adequada ao
  seu hardware e documentá-la.
- **Pré-requisitos:** noções de VM/container ([Cap. 2](../../HANDBOOK.md#capitulo-2)); um
  hipervisor instalado.
- **Regras de segurança:** rede host-only/interna sem internet para alvos; snapshots;
  nenhum dado pessoal no laboratório.
- **Passos gerais:**
  1. Escolher hipervisor e definir a topologia (atacante, alvo, isolada).
  2. Criar ao menos uma VM atacante e uma alvo em rede isolada.
  3. Tirar snapshots "limpos".
  4. Documentar a arquitetura (diagrama textual + Mermaid opcional) no seu repositório.
- **Entregáveis:** documento de arquitetura, inventário de VMs, procedimento de
  snapshot/restore.
- **Critérios de conclusão:** você cria e restaura snapshots; explica por que nada toca a
  internet; outra pessoa conseguiria reproduzir seu lab pela documentação.
- **Perguntas de reflexão:** Por que rede host-only? O que muda se seu hardware for modesto?
  Como impediria propagação acidental de um worm de teste?
- **Evidências para portfólio:** README do laboratório com diagrama; demonstra fundamentos e
  documentação.
- **Extensões:** adicionar VM Windows/AD e um coletor de logs (prepara as trilhas blue-team e
  red-team).
- **O que NÃO fazer:** expor VMs à internet; usar credenciais reais; instalar amostras de
  malware nesta fase.

## Rubrica de sucesso (o lab está montado corretamente)

- [ ] Rede isolada / host-only · [ ] snapshots feitos · [ ] sem internet nos alvos ·
  [ ] topologia documentada · [ ] restauração de estado limpo testada.
