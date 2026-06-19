# Scripts

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../en-US/scripts/README.md) · [README](../README.md)

Espaço para **seus** utilitários de estudo: automações de laboratório, geração de relatórios,
*helpers* para os projetos em [labs-do-leitor/](../labs-do-leitor/). Mantenha tudo
**defensivo e educacional**.

## Regras

- **Nada de conteúdo ofensivo operacionalizável:** sem malware, payloads, código
  autorreplicante, ferramentas de acesso não autorizado ou evasão de defesas (ver
  [HANDBOOK Cap. 0](../HANDBOOK.md#capitulo-0) e [CONTRIBUTING.md](../CONTRIBUTING.md)).
- **Sem segredos:** nunca versione credenciais, tokens ou chaves (ver
  [.gitignore](../../.gitignore)).
- **Documente e teste:** cada script com README curto e, quando fizer sentido, testes.
- **Secure coding desde o início** ([Cap. 3](../HANDBOOK.md#capitulo-3)): valide entradas, não
  use *shell* desnecessário, trate erros com segurança.

## Ideias de scripts seguros (alinhadas aos projetos)

- Verificador de integridade por hash ([Projeto 2](../labs-do-leitor/programacao/)).
- Parser de cabeçalhos HTTP que aponta cabeçalhos de segurança ausentes.
- Gerador de inventário de ativos **da sua própria máquina**.
- Conversor/relatório de SBOM ([Projeto 9](../labs-do-leitor/supply-chain/)).
- Normalizador de logs para ingestão no SIEM ([Projeto 11](../labs-do-leitor/blue-team/)).
- Validador de configuração contra uma *baseline* de hardening.

Sugestão de organização: uma subpasta por linguagem ou por projeto, cada uma com seu README.
