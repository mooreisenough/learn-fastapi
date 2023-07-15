## Create a new migration for databases
db-migrations: $(eval SHELL:=/bin/bash)
	@echo "Creating Required Databases"
	cd ./config/
	yoyo list
	yoyo apply --batch

## Run migrations for Tables
table-migrations: $(eval SHELL:=/bin/bash)
	@echo "Creating Required Database Tables"
	cd ./config/dev/
	yoyo list
	yoyo apply --batch
	@echo "Databse creation job completed. Check for errors!"

## Run Docker Containers for Postgres, PGAdmin, and Dozzle (logs)
start-docker: $(eval SHELL:=/bin/bash)
	@echo "Running docker compose in daemon mode"
	docker compose --env-file config/dev/.env up -d
	@echo "Containers started. Check for errors!"

## Run whenever opening a new terminal/shell
run-tests:
	{ \
	echo "adding required environment variables";\
	export DATABASE_TEST_URL=postgres://postgres:postgres@web-db:5432/web_test;\
	export ENVIRONMENT=dev;\
	poetry run python -m pytest;\
	}

run-app:
	{ \
	echo "running the app";\
	export DATABASE_URL=postgres://postgres:postgres@web-db:5432/web_dev;\
	export ENVIRONMENT=dev;\
	poetry run python -m uvicorn app.main:app --reload;\
	}
