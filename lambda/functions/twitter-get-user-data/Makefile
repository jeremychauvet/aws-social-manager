.PHONY: init deploy test

init:
	serverless plugin install --name serverless-ssm-fetch

test:
	serverless invoke --function get-user-data --stage dev --region eu-central-1 --path test/payload.json

deploy: init
	serverless deploy
