Starter Project for FastAPI using Poetry and GitPod
to open properly use this URL format and replace "lesson1" with the proper folder

https://gitpod.io/#LESSON=lesson1/https://github.com/mooreisenough/learn-fastapi

Once at the Terminal in GitPod, run these commands to get started


1. docker-compose pull | to pull Postgres & PGAdmin
2. docker-compose --env-file .env.dev up -d | start containers
3. run Database Migrations scripts using yoyo (see below)
4. uvicorn app.main:app --reload - To run the app

Using YoYo migrations 
1. yoyo init | update database info
2. yoyo new --sql | edit SQL
3. yoyo list
4. yoyo apply 

