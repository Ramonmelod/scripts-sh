#!/bin/bash
bot_token="HERE_YOUR_BOT_TOKEN"
chat_id="HERE_YOUR_CHAT_ID"
search=$(curl -s "https://api64.ipify.org?format=json")

curl -X POST \
     -H "Content-Type: application/json" \
     -d "{\"chat_id\": \"$chat_id\", \"text\": $search}" \
     "https://api.telegram.org/bot$bot_token/sendMessage"

