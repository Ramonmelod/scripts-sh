## Instructions to use the telegram bot

- To create a Webhook to a url site:

```sh
https://api.telegram.org/bot<YOUR_TOKEN>/setWebhook?url=<YOUR_URL>
```


- To send a message through the bot:

```sh
  curl -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"<YOUR_CHAT_ID>\", \"text\": \"Here your message!\"}" "https://api.telegram.org/bot<YOUR_TOKEN>/sendMessage"
```


- To get all the messages sent to the bot:

```sh
 curl https://api.telegram.org/bot<YOUR_TOKEN>/getUpdates
```

