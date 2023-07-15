Starter Project for FastAPI using Poetry and GitPod
to open properly use this URL format and replace "lesson1" with the proper folder

https://gitpod.io/#LESSON=lesson1/https://github.com/mooreisenough/learn-fastapi

Once at the Terminal in GitPod, run these commands to get started


1. docker-compose pull | to pull Postgres & PGAdmin
2. make start-docker
3. make db-migrations
4. make table-migrations
5. make run-app

To Run Test:  
1. set environment variables (need to do this via .env)
    - export DATABASE_URL=postgres://postgres:postgres@web-db:5432/web_dev
    - export DATABASE_TEST_URL=postgres://postgres:postgres@web-db:5432/web_test
    - export ENVIRONMENT=dev
2. poetry run python -m pytest or "make run-tests"
