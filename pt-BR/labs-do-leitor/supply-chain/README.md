# Trilha: Supply Chain e DevSecOps

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/supply-chain/README.md)

Capítulo: [Cap. 13](../../HANDBOOK.md#capitulo-13). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 8 — Pipeline CI/CD com verificações de segurança

- **Cenário:** você quer "deslocar a segurança para a esquerda" em um projeto **seu**.
- **Objetivo:** montar um pipeline CI/CD que execute **SAST**, **SCA** e **DAST** e falhe em
  achados críticos.
- **Pré-requisitos:** [Cap. 6](../../HANDBOOK.md#capitulo-6),
  [Cap. 13](../../HANDBOOK.md#capitulo-13); um repositório de exemplo seu.
- **Regras de segurança:** repositório próprio; segredos fora do código; runners isolados.
- **Passos gerais:** configurar o pipeline; integrar SAST/SCA/DAST; definir *gates*;
  adicionar *secret scanning* e proteção de *branch*.
- **Entregáveis:** pipeline funcional + documentação dos *gates*.
- **Critérios de conclusão:** o pipeline detecta uma falha plantada e barra o *merge*.
- **Perguntas de reflexão:** como evitar fadiga de alertas no pipeline? O que rodar em PR vs em
  *nightly*?
- **Evidências:** desenvolvimento + arquitetura.

---

## Projeto 9 — Geração e análise de SBOM

- **Objetivo:** gerar um **SBOM** (*Software Bill of Materials*) de um projeto seu e cruzá-lo
  com avisos públicos de vulnerabilidade.
- **Pré-requisitos:** [Cap. 13](../../HANDBOOK.md#capitulo-13); um projeto com dependências.
- **Passos gerais:** gerar o SBOM a partir do *lockfile*; listar componentes; identificar
  dependências potencialmente vulneráveis; propor mitigação.
- **Entregáveis:** SBOM + relatório de componentes de risco.
- **Critérios de conclusão:** você responde "uso algo afetado pela falha X?" com base no SBOM.
- **Perguntas de reflexão:** como *typosquatting* e *dependency confusion* burlariam suas
  defesas? O que SLSA/Sigstore acrescentariam?
- **Evidências:** investigação + defesa.

---

## Projeto 18 — Simulação defensiva de ataque de supply chain

- **Cenário:** estudar, de forma **defensiva e conceitual**, como um comprometimento de cadeia
  de suprimentos se daria e quais controles o conteriam.
- **Objetivo:** modelar o cenário (sem produzir pacote malicioso) e desenhar controles
  preventivos e detectivos.
- **Pré-requisitos:** Projetos 8–9.
- **Regras de segurança:** **exercício documental/defensivo**; não publique pacotes
  maliciosos; não ataque repositórios públicos.
- **Passos gerais:** mapear o fluxo de build; identificar pontos de injeção
  (dependências, runners, artefatos); propor controles (builds reproduzíveis, proveniência,
  assinatura, segregação, revisão); definir **detecções** (mudanças inesperadas, hashes,
  proveniência ausente).
- **Entregáveis:** documento com modelo de ameaça da cadeia + controles + detecções.
- **Critérios de conclusão:** você liga cada ponto de injeção a um controle e a uma detecção.
- **Perguntas de reflexão:** qual elo confiável seria o mais difícil de proteger? Por quê?
- **Evidências:** defesa + arquitetura.
- **O que NÃO fazer (toda a trilha):** publicar pacotes maliciosos; usar nomes que induzam
  *typosquatting* em repositórios reais; comprometer infraestrutura de terceiros.

## Dados de exemplo (sintéticos — manifesto de dependências)

```json
{ "dependencies": { "left-pad": "1.3.0", "acme-utils": "0.0.1-internal" } }
```

Identifique o risco de dependency-confusion / typosquatting e proponha um controle (pinning, registry com escopo).

## Rubrica de sucesso

- [ ] Dependência arriscada identificada · [ ] SBOM gerado (conceito) · [ ] controle proposto ·
  [ ] gate de pipeline descrito.
