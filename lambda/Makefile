.PHONY: deploy
.DEFAULT: deploy

LAYERS_PATH=layers
TMP_PATH=$(LAYERS_PATH)/tmp
OUTPUT_PATH=$(LAYERS_PATH)/output

deploy: build
	cd functions/twitter-get-user/ && make deploy

build:
	rm -f $(LAYERS_PATH)/tweepy.zip || true
	mkdir -p $(TMP_PATH) && mkdir -p $(OUTPUT_PATH)/python
	pip3.8 install --upgrade --target $(TMP_PATH) tweepy
	mv $(TMP_PATH)/* $(OUTPUT_PATH)/python
	cd $(OUTPUT_PATH) && zip -r tweepy.zip python/ && mv tweepy.zip ../tweepy.zip && cd -
	rm -fr $(TMP_PATH)
	rm -fr $(OUTPUT_PATH)
