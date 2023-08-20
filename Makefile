PROJECT=$(shell basename $(shell pwd))
TAG=hlyi/${PROJECT}

info:
	echo ${PROJECT}

ci:
	docker build -t ${TAG} .
	docker push ${TAG}:latest
	docker image rm ${TAG}:latest
