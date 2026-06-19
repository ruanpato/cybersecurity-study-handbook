# Trilha: Cloud Security

🌐 **Idioma:** **Português (pt-BR)** · [English (en-US)](../../../en-US/reader-labs/cloud-security/README.md)

Capítulo: [Cap. 11](../../HANDBOOK.md#capitulo-11). Regras gerais em
[../README.md](../README.md#regras-de-seguranca-valem-para-todos-os-labs).

---

## Projeto 17 — Revisão de segurança de uma arquitetura cloud

- **Cenário:** você precisa avaliar a postura de segurança de uma arquitetura cloud (real
  **sua**, em *free tier*, ou um desenho fictício).
- **Objetivo:** identificar exposições, privilégios excessivos e ausência de controles, e
  propor melhorias.
- **Pré-requisitos:** [Cap. 9](../../HANDBOOK.md#capitulo-9) e
  [Cap. 11](../../HANDBOOK.md#capitulo-11); conta cloud em *free tier* (opcional).
- **Regras de segurança:** **somente** em conta/recursos seus. Defina **budget e alertas**
  antes de criar qualquer recurso e **destrua** ao terminar. Não use credenciais de produção
  de terceiros.
- **Passos gerais:**
  1. Mapear componentes (identidades, redes, storage, segredos, logging).
  2. Avaliar contra o modelo de responsabilidade compartilhada e o menor privilégio.
  3. Procurar storage exposto, papéis amplos demais, falta de logging, proteção do *metadata
     service*.
  4. Recomendar melhorias (CSPM, segmentação, multi-account).
- **Entregáveis:** relatório de postura com achados priorizados e recomendações.
- **Critérios de conclusão:** você aponta riscos reais e explica como uma SSRF poderia abusar
  do *metadata service*.
- **Perguntas de reflexão:** qual achado tem maior *blast radius*? O que automatizaria com
  IaC/CSPM?
- **Evidências para portfólio:** demonstra arquitetura e defesa.
- **Extensões:** declarar a arquitetura em IaC e escanear; conectar com
  [supply-chain](../supply-chain/) (CI/CD).
- **O que NÃO fazer:** testar contas/ambientes que não sejam seus; deixar recursos pagos
  ligados (custo).

## Dados de exemplo (sintéticos — política IAM permissiva demais)

```json
{ "Effect": "Allow", "Action": "*", "Resource": "*" }
```

Explique por que é perigoso e reescreva com menor privilégio para uma app que lê um bucket.

## Rubrica de sucesso

- [ ] Má configuração identificada · [ ] correção de menor privilégio escrita · [ ] checagem de
  exposição pública · [ ] log de auditoria habilitado (conceito).
