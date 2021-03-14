DOCKER_IMAGE := rwinfosec/simple-web-app
GIT_VERSION := $(shell git rev-parse HEAD)

docker-build:
	docker build \
	-t ${DOCKER_IMAGE}:${GIT_VERSION} \
	-t ${DOCKER_IMAGE}:latest \
	-f docker/Dockerfile .

run-local:
	sed -e 's/<VERSION>/${GIT_VERSION}/g' docker-compose.local.yml | docker-compose --project-name simple-web-app -f /dev/stdin up -d

stop-local:
	docker-compose --project-name simple-web-app down --volumes
