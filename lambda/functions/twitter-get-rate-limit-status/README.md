# Function twitter-get-rate-limit-status

## Description

Lambda used to get Twitter API limit status

## Function prerequisites

Provision AWS System Manager Parameter Store with keys :

| Path                         | Description         | Type         |
|------------------------------|---------------------|--------------|
| /twitter/consumer_key        | Consumer key        | SecureString |
| /twitter/consumer_secret     | Consumer secret     | SecureString |
| /twitter/access_token        | Access token        | SecureString |
| /twitter/access_token_secret | Access token secret | SecureString |

## Parameters

No parameter.
