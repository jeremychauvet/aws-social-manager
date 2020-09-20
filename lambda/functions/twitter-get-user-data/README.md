# Function twitter-get-user-data

## Description

Lambda used to get user data (UserId, etc) from a screen name given in parameter.

## Function prerequisites

Provision AWS System Manager Parameter Store with keys :

| Path                         | Description         | Type         |
|------------------------------|---------------------|--------------|
| /twitter/consumer_key        | Consumer key        | SecureString |
| /twitter/consumer_secret     | Consumer secret     | SecureString |
| /twitter/access_token        | Access token        | SecureString |
| /twitter/access_token_secret | Access token secret | SecureString |

## Parameters

| Parameter  | Type   | Example |
|------------|--------|---------|
| ScreenName | string | apple   |
