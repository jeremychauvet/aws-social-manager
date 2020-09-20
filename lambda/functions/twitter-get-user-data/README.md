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

## Output

Output given when using command `make test-get-user-data` (Makefile located in lambda/functions/)

```json
{
    "statusCode": 200,
    "output": 380749300
}
```

## Tests

Function tests are located in `test` folder.
You can run it with command `make test-get-user-data` in folder lambda/functions/
