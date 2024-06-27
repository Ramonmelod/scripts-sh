#!/bin/bash
bot_token="HERE_YOUR_BOT_TOKEN"
chat_id="HERE_YOUR_CHAT_ID"
search=$(curl -s https://blockchain.info/ticker)

btc_price_dolar=$(echo $search | jq -r '.USD.last')
btc_price_real=$(echo $search | jq -r '.BRL.last')

curl -X POST \
     -H "Content-Type: application/json" \
     -d "{\"chat_id\": \"$chat_id\", \"text\": \"btc-dolar: $btc_price_dolar\"}" \
     "https://api.telegram.org/bot$bot_token/sendMessage"

curl -X POST \
     -H "Content-Type: application/json" \
     -d "{\"chat_id\": \"$chat_id\", \"text\": \"btc-real: $btc_price_real\"}" \
     "https://api.telegram.org/bot$bot_token/sendMessage"
