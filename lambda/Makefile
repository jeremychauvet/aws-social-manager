.PHONY: deploy
.DEFAULT: deploy

deploy: build
	cd functions/twitter-get-user/ && make deploy

build: layers/tweepy.zip
	rm -f layers/tweepy.zip || true
	mkdir -p layers/tweepy
	pip3 install --upgrade --target layers/tweepy tweepy
	zip -r layers/tweepy.zip layers/tweepy
	rm -fr layers/tweepy
