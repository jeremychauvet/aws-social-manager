# aws-social-manager

![Sonar](https://github.com/jeremychauvet/aws-social-manager/workflows/Sonar/badge.svg?branch=master)
![Lint Code Base](https://github.com/jeremychauvet/aws-social-manager/workflows/Lint%20Code%20Base/badge.svg?branch=master)

The purpose of this projet is to create a bot to manage a Twitter communinity using the power of AWS. We will mainly use S3 as frontend, and Lambda as backend.

The architecture is the following :

TODO

## Terraform

> *Important*

* You *must* create a `terraform.tfvars` file based on `terraform.tfvars.dist` one *before* trying to apply.

* Applying this Terraform *WILL* break the first time. For example you need a Cloudfront ID, that you can get only when you have created your distribution. Please be carefull of dependencies.

* CloudFront distributions take about 15 minutes to a deployed state after creation or modification.

* Please use tfenv.

## Links

In this section, you will find ressources I've used for my research.

### Local DynamoDB

* Limits and differences local DynamoDB and the DynamoDB Web Service : <https://docs.aws.amazon.com/fr_fr/amazondynamodb/latest/developerguide/DynamoDBLocal.UsageNotes.html>

### Serverless

* Setup AWS credentials for Serverless : <https://www.serverless.com/framework/docs/providers/aws/guide/credentials/>
* Using AWS System Manager Parameter Store (SSM) to store credentials : <https://www.serverless.com/plugins/serverless-ssm-fetch>
* Serverless, use AWS Lambda Layers : <https://www.serverless.com/framework/docs/providers/aws/guide/layers/>
