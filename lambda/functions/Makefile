# Functions
.PHONY: init deploy lint test-get-user-data test-get-user-followers
.DEFAULT: deploy

init:
	serverless plugin install --name serverless-ssm-fetch

deploy: init
	serverless deploy

lint:
	pre-commit run --all-files

test-get-user-data:
	serverless invoke --function get-user-data --stage dev --region eu-central-1 --path twitter-get-user-data/test/payload.json

test-get-user-followers:
	serverless invoke --function get-user-followers --stage dev --region eu-central-1 --path twitter-get-user-followers/test/payload.json
