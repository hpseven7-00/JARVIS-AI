# Exportar o workflow real do n8n

O workflow construído no n8n é parte essencial do JARVIS AI. Para incluí-lo no GitHub:

1. Entre na instância n8n do projeto.
2. Abra o workflow do JARVIS.
3. Abra o menu de opções (`...`).
4. Escolha **Download** ou **Export** (o nome pode variar por versão).
5. Salve o JSON exportado nesta pasta com o nome `jarvis-workflow.json`.
6. Revise o arquivo antes de publicar: remova tokens, chaves, senhas, cabeçalhos de autenticação e dados de contratos.
7. As credenciais devem continuar cadastradas no n8n; nunca publique segredos.

Para reutilizar em outra instância, importe o JSON no n8n, configure novamente a credencial Anthropic e revise a URL do webhook.

**Importante:** não há workflow fictício neste repositório. `jarvis-workflow.json` deve ser o arquivo exportado da automação real.
