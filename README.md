# DEPLOYMENT STEPS

### 1. Get a free heroku account

### 2. Install heroku CLI

### 2. Install Composer

### 3. Initialize composer and git for your project

### 4. Create app name on heroku using: heroku create app-name

### 5. Setup environment variables using: heroku config:set KEY=VALUE

### 6. Push app to heroku repo: heroku push heroku master

### 7. Provision MySQL DB: heroku addons:create cleardb:ignite

### 8. To migrate local database to heroku, you need to create a dump using:

#### mysqldump -uYOUR_USERNAME -pYOUR_PASSWORD YOUR_DATABASE_NAME --host=YOUR_HOST > YOUR_PATH/example.sql

### 9. To import local data of dump created to heroku, use:

#### mysql -uYOUR_USERNAME -pYOUR_PASSWORD YOUR_DATABASE_NAME --host=YOUR_HOST < YOUR_PATH/example.sql

### 10. To connect heroku mysql database, use: 

#### mysql -uYOUR_USERNAME -pYOUR_PASSWORD YOUR_DATABASE_NAME --host=YOUR_HOST

### 11. To monitor heroku log, use: heroku logs --tail