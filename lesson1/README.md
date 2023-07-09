Starter Project for FastAPI using Poetry and GitPod
to open properly use this URL format and replace "lesson1" with the proper folder

https://gitpod.io/#LESSON=lesson1/https://github.com/mooreisenough/learn-fastapi

Once at the Terminal in GitPod, run these commands to get started

1. poetry install - to install python dependencies
2. docker-compose pull && docker-compose up -d - start containers
3. docker run -v $PWD:/db migrate/migrate:v4.16.2 create -ext sql -dir db/migrations -seq create_web__dev_table - To perfrom Database Migrations, we are using the "Migrate" GoLang cli tool via Docker
4. uvicorn app.main:app --reload - To run the app

Once setup the DB URLs to be (use environment variables via export)
- DATABASE_URL=postgres://postgres:postgres@web-db:5432/web_dev
- DATABASE_TEST_URL=postgres://postgres:postgres@web-db:5432/web_test