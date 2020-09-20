.PHONY: init deploy test
.DEFAULT: deploy

init:
	serverless plugin install --name serverless-ssm-fetch

test:
	serverless invoke --function CHANGE_ME --stage dev --region eu-central-1 --path test/payload.json

deploy: init
	serverless deploy
