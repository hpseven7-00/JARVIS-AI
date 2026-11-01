# Arquitetura do JARVIS AI

O sistema é dividido em duas partes:

1. **Frontend:** página web estática executada no navegador. Permite selecionar um PDF, enviar o arquivo e visualizar a resposta.
2. **Automação:** workflow hospedado no n8n. Recebe o arquivo por webhook, encaminha o documento para a Anthropic, solicita a análise ao Claude e devolve JSON ao frontend.

## Fluxo
1. O usuário seleciona um PDF.
2. O JavaScript envia uma requisição `POST` com `multipart/form-data`.
3. O arquivo é enviado no campo `contrato`.
4. O Webhook do n8n recebe o arquivo.
5. O workflow faz o upload do documento para a Anthropic.
6. O Claude analisa o documento anexado à mensagem.
7. `Respond to Webhook` devolve JSON com a propriedade `analise`.
8. A interface apresenta o texto recebido.

## Contrato da integração

**Requisição:** `POST`, `multipart/form-data`, campo `contrato`, arquivo PDF.

**Resposta esperada:**
```json
{
  "analise": "Resumo, partes, valores, prazos, obrigações e pontos de atenção..."
}
```

Este documento descreve a arquitetura esperada. O workflow real deve ser exportado diretamente da instância n8n.
