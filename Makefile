IMAGE_NAME=my-web-app

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: run
run:
	docker run -p 5000:5000 $(IMAGE_NAME)

.PHONY: clean
clean:
	docker stop $(shell docker ps -q --filter ancestor=$(IMAGE_NAME))
	docker rm $(shell docker ps -aq --filter ancestor=$(IMAGE_NAME))
	docker rmi $(IMAGE_NAME)
