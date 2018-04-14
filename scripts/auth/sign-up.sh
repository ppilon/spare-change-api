#!/bin/bash

curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'",
      "user_profile_attributes": {
        "username": "'"${USERNAME}"'",
        "first_name": "'"${FIRST_NAME}"'",
        "last_name": "'"${LAST_NAME}"'"
      }
    }
  }'

echo
