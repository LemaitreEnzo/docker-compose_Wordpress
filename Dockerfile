FROM php:8.2-apache
COPY ./wordpress /var/www/wordpress
WORKDIR /var/www
RUN docker-php-ext-install mysqli
RUN rmdir html
RUN ln -s wordpress html
EXPOSE 80
VOLUME /var/www/wordpress/wp-content