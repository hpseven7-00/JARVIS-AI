# Manual de uso — JARVIS AI

## Iniciar
Abra a interface em `http://localhost:5500`, depois de iniciar o servidor local da pasta `frontend`.

## Enviar contrato
1. Clique na área de envio ou arraste um PDF.
2. Confira o nome do arquivo.
3. Clique em **Analisar contrato**.
4. Aguarde o processamento do n8n e do Claude.

## Consultar resultado
A análise aparece no painel **Relatório do JARVIS**. Use os botões para copiar ou baixar o texto.

## Se não funcionar
- Confirme se o workflow está ativo ou aguardando uma chamada de teste.
- Confira a constante `WEBHOOK_URL` em `frontend/index.html`.
- Verifique se o Webhook recebe o arquivo no campo `contrato`.
- Confirme se `Respond to Webhook` devolve a propriedade JSON `analise`.
- Se houver erro CORS, ajuste a política de origem do ambiente n8n/proxy.

## Aviso
A análise é gerada por IA. Confira os dados no contrato original; o resultado não é parecer jurídico.
