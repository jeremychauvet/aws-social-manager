# Function twitter-follow-user

## Description

Lambda used to follow user, and mute it.

## Function prerequisites

Provision AWS System Manager Parameter Store with keys :

| Path                         | Description         | Type         |
|------------------------------|---------------------|--------------|
| /twitter/consumer_key        | Consumer key        | SecureString |
| /twitter/consumer_secret     | Consumer secret     | SecureString |
| /twitter/access_token        | Access token        | SecureString |
| /twitter/access_token_secret | Access token secret | SecureString |

## Parameters

| Parameter  | Type   | Example     |
|------------|--------|-------------|
| twitterId  | number | 380749300   |

## Output

Output given when using command `make test-CHANGE-ME` (Makefile located in lambda/functions/)

```json
{
  "statusCode": 200,
  "output": [

  ]
}
```

## Tests

Function tests are located in `test` folder.
You can run it with command `make test-CHANGE-ME` in folder lambda/functions/
