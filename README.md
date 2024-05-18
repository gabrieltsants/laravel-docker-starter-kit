## Installing

* cp .env-example .env
* docker compose up --build

### Inside container (php)

* composer install
* php artisan key:generate
* php artisan migrate
* php artisan storage:link
* php artisan db:seed


