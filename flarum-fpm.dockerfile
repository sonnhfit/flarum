FROM php:7.2-fpm-alpine
RUN apk add libjpeg-turbo-dev libpng-dev freetype-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql
   

# COPY ./storage/* /var/www/
# RUN chown -R www-data:www-data /var/www


RUN chmod -R 777 /var/www/*
RUN chown -R www-data:www-data /var/www/html
RUN chown -R www-data:www-data /var/www/
#RUN chown www-data:www-data -R /var/www/
# RUN chmod -R 775 /var/www/public/assets/*
#luu y chmod -R 777 cai storage
#RUN chmod -R 777 storage
