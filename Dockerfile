FROM php:7.2-apache

ENV MYSQL_HOST=mysql \
    MYSQL_USER=workshop \
    MYSQL_DATABASE=workshop

RUN docker-php-ext-install mysqli
RUN a2enmod rewrite

RUN chmod g+w /var/run/apache2 && \
    chgrp root /var/run/apache2

RUN rm /etc/apache2/sites-enabled/*

COPY files/default /etc/apache2/sites-enabled/default.conf
COPY files/ports.conf /etc/apache2/ports.conf
COPY files/index.php /var/www/html/

EXPOSE 8080
