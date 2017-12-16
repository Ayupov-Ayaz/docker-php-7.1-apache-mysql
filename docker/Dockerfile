FROM php:7-apache

RUN a2enmod rewrite && docker-php-ext-install \
        pdo \
        pdo_mysql

COPY ./configs/000-default.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /var/www