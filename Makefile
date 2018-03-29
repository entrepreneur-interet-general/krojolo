image_name = krojolo
pwd = $(shell pwd)

all: dev

dev: run

run: build
	sudo docker run \
		-p 9200:9200 \
		-p 9300:9300 \
		-v /usr/share/elasticsearch/data \
		--network=host \
		-it \
		$(image_name):dev

build: clean
	sudo docker build \
		--network=host \
		--tag=$(image_name):dev \
		.

clean: cleanContainer

cleanContainer:
	sudo docker container prune -f