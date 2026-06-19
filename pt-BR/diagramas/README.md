# Diagramas

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../en-US/diagrams/README.md) · [README](../README.md)

Esta pasta guarda diagramas que apoiam o [HANDBOOK.md](../HANDBOOK.md). A convenção do projeto
(ver [CONTRIBUTING.md](../CONTRIBUTING.md)) é:

- Preferir **Mermaid** embutido no próprio Markdown (versionável como texto).
- **Sempre** acompanhar cada diagrama de uma **descrição textual**, para que o conteúdo
  sobreviva a exportadores de PDF que não renderizam Mermaid e para acessibilidade.
- Evitar imagens binárias externas que possam desaparecer. Se um diagrama for exportado para
  imagem, mantenha a fonte (`.mmd` ou bloco Mermaid) versionada.

## Diagramas já presentes no handbook

Estes diagramas estão embutidos diretamente no [HANDBOOK.md](../HANDBOOK.md), cada um com sua
descrição textual:

- Topologia do laboratório seguro — [Cap. 1](../HANDBOOK.md#capitulo-1).
- Espaço de endereçamento de um processo (stack/heap) — [Cap. 2](../HANDBOOK.md#capitulo-2).
- Encapsulamento de camadas de rede — [Cap. 5](../HANDBOOK.md#capitulo-5).
- Ferramentas de teste no ciclo (SAST/DAST/SCA/RASP) — [Cap. 6](../HANDBOOK.md#capitulo-6).
- Cyber Kill Chain — [Cap. 10](../HANDBOOK.md#capitulo-10).
- Fluxo de detecção (log → alerta → resposta) — [Cap. 14](../HANDBOOK.md#capitulo-14).
- Ciclo de purple team — [Cap. 18](../HANDBOOK.md#capitulo-18).

## Sugestões de diagramas para adicionar (2ª edição)

- Diagrama de fluxo OAuth 2.0 / OIDC ([Cap. 9](../HANDBOOK.md#capitulo-9)).
- Cadeia de confiança PKI/TLS ([Cap. 8](../HANDBOOK.md#capitulo-8)).
- Arquitetura multi-account em cloud ([Cap. 11](../HANDBOOK.md#capitulo-11)).
- Fluxo de build e pontos de injeção de supply chain ([Cap. 13](../HANDBOOK.md#capitulo-13)).

Ao criar, salve a fonte aqui (ex.: `oauth-fluxo.mmd`) e inclua a descrição textual.
