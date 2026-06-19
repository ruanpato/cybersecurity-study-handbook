# Trilha: Redes

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/networks/README.md)

Capítulo: [Cap. 5](../../HANDBOOK.md#capitulo-5). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 3 — Captura e explicação de HTTP e TLS

- **Cenário:** você quer entender, no nível do pacote, o que acontece ao acessar um site.
- **Objetivo:** capturar uma navegação **HTTP** e uma **HTTPS** (TLS) na **sua própria
  máquina/laboratório** e explicar cada etapa.
- **Pré-requisitos:** [Cap. 5](../../HANDBOOK.md#capitulo-5); um analisador de pacotes.
- **Regras de segurança:** capture **apenas** tráfego seu/do laboratório. Não capture tráfego
  de redes ou pessoas de terceiros.
- **Passos gerais:**
  1. Capturar uma requisição HTTP simples (ex.: a um servidor local).
  2. Identificar o *three-way handshake* TCP.
  3. Capturar uma conexão HTTPS e identificar o *handshake* TLS.
  4. Comparar: o que é visível em HTTP vs HTTPS (e o que ainda fica visível em HTTPS, como
     SNI, IPs e tamanhos).
- **Entregáveis:** write-up com capturas comentadas (sanitizadas) e um diagrama do handshake.
- **Critérios de conclusão:** você explica o handshake TCP, o que o TLS protege/não protege e
  identifica uma consulta DNS associada.
- **Perguntas de reflexão:** por que o TLS não esconde tudo? Como um proxy reverso muda o
  cenário? O que mudaria com HTTP/2 ou HTTP/3?
- **Evidências para portfólio:** demonstra fundamentos e capacidade investigativa.
- **Extensões:** analisar uma resolução DNS; observar diferença entre protocolo inseguro
  (ex.: Telnet local) e seu equivalente seguro (SSH).
- **O que NÃO fazer:** *sniffing* de redes alheias; ataques de *man-in-the-middle* fora do seu
  laboratório.

## Dados de exemplo (sintéticos)

| Hora | Origem | Destino | Proto | Nota |
|---|---|---|---|---|
| 00:01 | host | dns | DNS | `A? cdn-updates.example` |
| 02:16 | host | newdomain.example | TLS | pequeno, periódico (~60 s) |

Formule uma hipótese (poller benigno vs beaconing) e liste o que checaria a seguir.

## Rubrica de sucesso

- [ ] Baseline vs anomalia declarada · [ ] hipótese com evidência · [ ] próximos passos
  investigativos · [ ] conclusão só defensiva.
