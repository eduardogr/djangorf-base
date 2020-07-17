CONTAINER_NAME=drf-api

env ?= dev # get from cl or 'dev' by default

build:
	docker-compose build \
	    --build-arg BUILD_ENV=$(env) \
		$(CONTAINER_NAME)

build-force:
	docker-compose build --force \
	    --build-arg BUILD_ENV=$(env) \
		$(CONTAINER_NAME)

up:
	docker-compose up -d $(CONTAINER_NAME)

down:
	docker-compose down

test:
	docker-compose exec $(CONTAINER_NAME) pytest $(ARGS)

monitoring-up:
	docker-compose --file docker-compose.monitoring.yaml up -d

monitorgin-down:
	docker-compose down \
			--file docker-compose.monitoring.yaml
