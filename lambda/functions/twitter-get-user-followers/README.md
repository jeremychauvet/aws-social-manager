# Function twitter-get-user-followers

## Description

Lambda used to get followers list of an user given in parameter.

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

Output given when using command `make test-get-user-followers` (Makefile located in lambda/functions/)

```json
{
  "statusCode": 200,
  "output": [
    834825193755406300,
    1307713552988475400,
    1307718796610855000,
    1307718860410245000,
    1248246562544849000,
    1253450502563598300,
    1300981889142911000,
    1306623609159528400,
    1221610789850710000
  ]
}
```

## Tests

Function tests are located in `test` folder.
You can run it with command `make test-get-user-followers` in folder lambda/functions/
