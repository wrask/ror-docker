up: ## Start up local environment
	@echo "starting ..."
	docker-compose up -d

down: ## Stop up local environment
	@echo "stopping ..."
	docker-compose down

build: ## Build and start up local environment
	@echo "building ..."
	docker-compose up --build -d

help:
	@grep -E '^[a-zA-Z_0-9-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

