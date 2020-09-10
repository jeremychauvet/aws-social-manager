.PHONY=lint
.DEFAULT=lint

lint:
	pre-commit run --all-files
