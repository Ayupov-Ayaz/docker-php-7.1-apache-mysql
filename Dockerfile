FROM php:7.1-apache

RUN a2enmod rewrite && docker-php-ext-install \
        pdo \
        pdo_mysql &&\
   # install xdebug
   pecl install  xdebug &&\
   docker-php-ext-enable xdebug

COPY ./configs/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./configs/php.ini /usr/local/etc/php/
COPY ./src /var/www/html
WORKDIR /var/www/html