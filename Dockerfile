
FROM php:8.1-apache

WORKDIR /var/www/html

COPY . /var/www/html/

RUN docker-php-ext-install mysqli && \
    a2enmod rewrite

EXPOSE 80

CMD ["apache2-foreground"]
