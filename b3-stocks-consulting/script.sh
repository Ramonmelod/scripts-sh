#!/bin/bash

#sudo apt install jq #jq is used to extract the information of the btc-dolar value and the dolar-real value

bot_token="YOUR_BOT_TOKEN"
chat_id="YOUR_CHAT_ID"
price1=$(curl -s https://brapi.dev/api/quote/oibr3?token=4hDJiNuSXrmaTBaBaDZDbr | jq -r '.results[0].regularMarketPrice')
price2=$(curl -s https://brapi.dev/api/quote/dasa3?token=4hDJiNuSXrmaTBaBaDZDbr | jq -r '.results[0].regularMarketPrice')

curl -X POST \
     -H "Content-Type: application/json" \
     -d "{\"chat_id\": \"$chat_id\", \"text\": \"OIBR3: $price1\"}" \
     "https://api.telegram.org/bot$bot_token/sendMessage"


curl -X POST \
     -H "Content-Type: application/json" \
     -d "{\"chat_id\": \"$chat_id\", \"text\": \"DASA3: $price2\"}" \
     "https://api.telegram.org/bot$bot_token/sendMessage"     
