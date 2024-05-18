FROM php:8.3-fpm-alpine

RUN set -ex \
    	&& apk --no-cache add postgresql-dev \
    	&& docker-php-ext-install pdo pdo_pgsql

# Install redis
RUN apk --no-cache add pcre-dev ${PHPIZE_DEPS} \
  && pecl install redis \
  && docker-php-ext-enable redis \
  && apk del pcre-dev ${PHPIZE_DEPS}
      
COPY crontab /etc/crontabs/root

CMD ["crond", "-f"]