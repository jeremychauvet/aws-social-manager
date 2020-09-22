# Infrastructure as code

This folder hold code that will create Social Manager infrastructure on AWS. Please read the following section before creating it.

## Pre-requisites

## S3

Please create a bucket to remotely store state. Please note that this name must be unique (well, except for US-GOV and China).
Modify bucket name in `provider.tf` file.

## DynamoDB

Please create a table to store locks. Primary partition key must be `LockID` as define in Terraform documentation.

## Linter

Please install the following to use it with pre-commit :

* tflint : https://github.com/terraform-linters/tflint
* tfsec : https://github.com/liamg/tfsec

## How to plan

TODO

## How to apply

TODO
