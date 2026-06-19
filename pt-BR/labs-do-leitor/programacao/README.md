# Trilha: Programação

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/programming/README.md)

Capítulo: [Cap. 3](../../HANDBOOK.md#capitulo-3). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 2 — Analisador de logs em Python

- **Cenário:** você recebe arquivos de log (ex.: de um servidor web local) e precisa extrair
  sinais úteis.
- **Objetivo:** escrever, em Python, um analisador que faça *parsing*, agregue por
  IP/rota/status e destaque anomalias simples (picos de erro, muitas falhas de autenticação).
- **Pré-requisitos:** Python básico, regex, leitura de arquivos; [Cap. 2–3](../../HANDBOOK.md#capitulo-3).
- **Regras de segurança:** use **logs de exemplo/sintéticos**; não inclua dados pessoais
  reais; não envie dados a serviços externos.
- **Passos gerais:** definir o formato de log; escrever o parser; agregar métricas;
  implementar regras simples de alerta; escrever **testes**; documentar.
- **Entregáveis:** repositório com código, testes, README e exemplos de entrada/saída.
- **Critérios de conclusão:** roda sobre logs de exemplo, tem testes que passam, e você
  explica que validação previne qual problema.
- **Perguntas de reflexão:** como evitar *ReDoS* nas suas regex? Como tratar entradas
  malformadas com segurança? O que é um falso positivo aqui?
- **Evidências para portfólio:** demonstra desenvolvimento e fundamentos.
- **Extensões (sem virar ofensivo):** validador de configurações; verificador de integridade
  por hash; parser de cabeçalhos HTTP que aponta cabeçalhos de segurança ausentes; inventário
  de ativos **da sua própria máquina**; ferramenta de análise de hashes contra *allowlist*;
  analisador de dependências/SBOM (ver [supply-chain](../supply-chain/)).
- **O que NÃO fazer:** transformar o detector em ferramenta de ataque; coletar dados de
  terceiros; produzir qualquer código de acesso não autorizado.

## Dados de exemplo (sintéticos — casos de teste de um verificador de integridade)

```text
ok.txt        -> sha256 bate com o valor registrado
tampered.txt  -> sha256 difere  (sinalize)
```

Escreva testes para o caso malicioso/limite, não só o caminho feliz.

## Rubrica de sucesso

- [ ] Entrada validada · [ ] casos maliciosos/limite testados · [ ] erros falham de forma segura ·
  [ ] sem segredos no código/logs.
