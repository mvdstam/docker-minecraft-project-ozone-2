all: docker

.PHONY: docker

docker:
	docker-compose up -d --build
