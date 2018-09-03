FROM php:7.2-apache

RUN rm /etc/apache2/sites-enabled/*

COPY files/default /etc/apache2/sites-enabled/default.conf
COPY files/ports.conf /etc/apache2/ports.conf
COPY files/index.php /var/www/html/

EXPOSE 8080
