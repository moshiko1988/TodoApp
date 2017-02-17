#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "list": {
      "note": "'"${NOTE}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'
  # --header "Authorization: Token token=$TOKEN"

echo
