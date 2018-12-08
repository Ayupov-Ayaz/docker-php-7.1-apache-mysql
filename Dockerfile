FROM php:7.1-apache

RUN a2enmod rewrite && docker-php-ext-install \
        pdo \
        pdo_mysql &&\
   # install xdebug
   pecl install  xdebug &&\
   docker-php-ext-enable xdebug

COPY ./configs/000-default.conf /etc/apache2/sites-available/000-default.conf
WORKDIR /var/www/html