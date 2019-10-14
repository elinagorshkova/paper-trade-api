#!/bin/bash

curl "http://localhost:4741/portfolios" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "portfolio": {
      "name": "'"${NAME}"'",
      "balance": "'"${BAl}"'"
    }
  }'

echo
