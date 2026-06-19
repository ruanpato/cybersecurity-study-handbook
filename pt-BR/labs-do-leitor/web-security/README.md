# Trilha: Web Security

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/web-security/README.md)

Capítulo: [Cap. 6](../../HANDBOOK.md#capitulo-6). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 6 — Aplicação web local intencionalmente vulnerável e sua correção

- **Cenário:** para aprender a defender, você primeiro entende como falhas surgem — em um
  alvo **local e seu**.
- **Objetivo:** usar (ou escrever) uma aplicação **propositalmente vulnerável local**,
  identificar vulnerabilidades comuns e, principalmente, **corrigi-las**.
- **Pré-requisitos:** [Cap. 6](../../HANDBOOK.md#capitulo-6); ambiente web local; noções de
  uma linguagem web ([Cap. 3](../../HANDBOOK.md#capitulo-3)).
- **Regras de segurança:** **somente** em aplicação local/sua ou plataforma de treino que
  autoriza (ex.: laboratórios oficiais — ver [REFERENCIAS.md](../../REFERENCIAS.md)). Nunca
  contra sites de terceiros.
- **Passos gerais:**
  1. Subir a aplicação vulnerável localmente.
  2. Reproduzir, em ambiente controlado, ao menos: uma **SQLi**, um **XSS** e um **IDOR/BOLA**.
  3. Para cada uma: identificar causa-raiz, **corrigir** (parametrização, *output encoding*/CSP,
     checagem de autorização por objeto) e **reverificar**.
  4. Documentar antes/depois.
- **Entregáveis:** write-up com causa-raiz, correção e verificação de cada falha.
- **Critérios de conclusão:** as três classes são corrigidas e você explica a prevenção de
  cada uma.
- **Perguntas de reflexão:** por que "validação de entrada" sozinha não basta para XSS? Qual a
  diferença entre autenticação e autorização nas falhas que você viu?
- **Evidências para portfólio:** demonstra desenvolvimento e defesa.
- **Extensões:** adicionar testes automatizados de segurança; integrar SAST/DAST no pipeline
  (ver [supply-chain](../supply-chain/)); explorar SSRF/CSRF/desserialização **no alvo local**.
- **O que NÃO fazer:** testar qualquer site real; publicar a app vulnerável na internet;
  transformar PoCs em ferramentas de ataque.

## Dados de exemplo (sintéticos — template de achado)

| Campo | Valor |
|---|---|
| Título | SQLi em `/login` (lab local) |
| Severidade | Alta |
| Evidência | `' OR '1'='1` retorna todas as linhas |
| Correção | consultas parametrizadas + conta de banco com menor privilégio |

## Rubrica de sucesso

- [ ] Vulnerabilidade reproduzida na app local · [ ] causa-raiz explicada · [ ] correção aplicada e
  re-testada · [ ] achado documentado.
