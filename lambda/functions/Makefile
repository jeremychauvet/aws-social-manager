# Functions
.PHONY: deploy get-user-data get-user-followers 
.DEFAULT: deploy

init:
	serverless plugin install --name serverless-ssm-fetch

deploy: init
	serverless deploy

test-get-user-data:
	serverless invoke --function get-user-data --stage dev --region eu-central-1 --path get-user-data/test/payload.json

test-get-user-followers:
	serverless invoke --function get-user-followers --stage dev --region eu-central-1 --path get-user-followers/test/payload.json
