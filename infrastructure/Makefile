.PHONY: init plan apply lint

init:
	terraform init

plan: init
	terraform plan

apply: init
	terraform apply -auto-approve

lint:
	pre-commit run --all-files
