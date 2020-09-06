.PHONY: build
.DEFAULT: build

build:
	rm -f tweepy.zip || true
	mkdir -p tweepy
	pip3 install --upgrade --target ./tweepy tweepy
	zip -r tweepy.zip tweepy
	rm -fr tweepy
	@echo "Please add this zip to AWS Lambda console : https://eu-central-1.console.aws.amazon.com/lambda/home?region=eu-central-1#/layers"
