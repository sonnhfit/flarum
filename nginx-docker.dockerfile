FROM nginx
# RUN chown -R www-data:www-data /var/www
# RUN chown www-data:www-data -R /var/www
#RUN chmod -R 777 /var/www

RUN chmod -R 777 ./
