# Laravel Docker Starter Kit

This Laravel Docker Starter Kit provides a quick and easy way to get your Laravel application up and running with Docker. It includes services for Nginx, PHP, PostgreSQL, Redis, Cron, and Laravel Horizon.

## Installing

* cp .env-example .env
* docker compose up --build

### Inside container (php)

* composer install
* php artisan key:generate
* php artisan migrate
* php artisan storage:link
* php artisan db:seed


