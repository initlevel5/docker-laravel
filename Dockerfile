FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    build-essential \
    unzip \
    git

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www

RUN rm -rf html && composer create-project --prefer-dist laravel/laravel .

RUN groupadd -g 1000 www && \
    useradd -u 1000 -ms /bin/bash -g www www && \
    chown www:www -R /var/www

USER www

ENTRYPOINT ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8080"]

EXPOSE 8080