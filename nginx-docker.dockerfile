FROM nginx

RUN chmod -R 777 /var/www/*
RUN chown -R www-data:www-data /var/www/html
RUN chown -R www-data:www-data /var/www/
