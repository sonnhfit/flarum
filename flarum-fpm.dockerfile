FROM php:7.2-fpm-alpine
RUN apk add libjpeg-turbo-dev libpng-dev freetype-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql
    
    
RUN chmod -R 777 /var/www/*
RUN ls
RUN chown -R $USER:www-data storage/*
RUN chown -R $USER storage/* 
RUN chmod -R 775 storage
