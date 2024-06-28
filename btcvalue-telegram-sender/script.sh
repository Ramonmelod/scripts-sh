#!/bin/bash

bot_token="HERE_YOUR_BOT_TOKEN"
chat_id="HERE_YOUR_CHAT_ID"

search=$(curl -s https://blockchain.info/ticker)

btc_price_money=() #array declaration

btc_price_money+=($(echo $search | jq -r '.USD.last')) #append of the first element in the array
btc_price_money+=($(echo $search | jq -r '.BRL.last')) #append of the second element in the array


btc_price_dolar=$(echo $search | jq -r '.USD.last') #use of the jq to extract the btc-dolar value
btc_price_real=$(echo $search | jq -r '.BRL.last')  #use of the jq to extract the btc-real value

curl -X POST \
     -H "Content-Type: application/json" \
     -d "{\"chat_id\": \"$chat_id\", \"text\": \"btc-dolar: ${btc_price_money[0]} \n btc-real: ${btc_price_money[1]}\"}" \
     "https://api.telegram.org/bot$bot_token/sendMessage"
