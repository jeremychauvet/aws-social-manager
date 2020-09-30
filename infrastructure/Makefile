.PHONY: init plan apply lint

init:
	terraform init

plan: init
	terraform plan

apply: init
	terraform apply

lint:
	pre-commit run --all-files
