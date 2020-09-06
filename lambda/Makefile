.PHONY: deploy
.DEFAULT: deploy

LAYERS_PATH=layers
TWEEPY_PATH=$(LAYERS_PATH)/tweepy
OUTPUT_PATH=$(LAYERS_PATH)/output

deploy: build
	cd functions/twitter-get-user/ && make deploy

build: 
	rm -f $(LAYERS_PATH)/tweepy.zip || true
	mkdir -p $(TWEEPY_PATH) && mkdir -p $(OUTPUT_PATH)/python
	pip3 install --upgrade --target $(TWEEPY_PATH) tweepy
	mv $(TWEEPY_PATH) $(OUTPUT_PATH)/python
	cd $(OUTPUT_PATH) && zip -r tweepy.zip python/ && mv tweepy.zip ../tweepy.zip && cd -
	rm -fr $(TWEEPY_PATH)
	rm -fr $(OUTPUT_PATH)
