DOCKER_IMAGE_NAME = nginxconfig
DOCKER_IMAGE_TAG = local

BUILDX_BAKE_FILES = -f docker-bake.hcl
BUILDX_BAKE_TARGETS = default
BUILDX_BAKE_OPTIONS = --set *.tags=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)

it:
	@echo "Usage: make [build|run]"
	@echo "  build: build docker image"
	@echo "  run: run docker image"

build:
	docker buildx bake $(BUILDX_BAKE_FILES) $(BUILDX_BAKE_OPTIONS) $(BUILDX_BAKE_TARGETS)

run:
	docker run --rm -it -p 8080:80 $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)
