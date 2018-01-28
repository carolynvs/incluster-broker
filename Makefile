PKG = github.com/carolynvs/incluster-broker
DOCKER_IMG = incluster-broker-build

USE_DOCKER ?= true

ifeq ($(USE_DOCKER),true)
  DO = docker run --rm -it -v $$HOME/.kube:/root/.kube -v $$HOME/.minikube:$$HOME/.minikube -v $$(pwd):/go/src/$(PKG) $(DOCKER_IMG)
else
  DO =
endif

default: build

.PHONY: buildimage build

build: buildimage
	$(DO) ./build/build.sh

buildimage:
	docker build -t $(DOCKER_IMG) ./build

run: buildimage
	$(DO) ./build/run.sh
