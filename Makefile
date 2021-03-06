PACKAGE_DIR := app/

.PHONY: install
install:
	poetry install

.PHONY: update
update:
	poetry update

.PHONY: lint
lint:
	poetry run flake8 .

format:
	poerty run black .

sort:
	poetry run sort .

run-db:
	docker-compose up -d db

run-app:
	docker-compose up -d

run-app-host:
	poetry run uvicorn app.main:app --reload
