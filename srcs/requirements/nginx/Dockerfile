
FROM debian:bullseye

RUN apt update
RUN apt install -y	nginx\
					openssl\
					php7.4\
					php7.4-fpm

WORKDIR /app

COPY . .
COPY tools/index.php /var/www/html

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 	-keyout /etc/ssl/private.key -out /etc/ssl/certificate.crt -subj "/CN=hasabir.42.fr"


RUN chmod 755 /var/www/html
RUN chmod 777 tools/script.sh
# RUN chown -R www-data:www-data /var/www/html


# RUN rm /etc/nginx/sites-enabled/default
# RUN rm /etc/nginx/sites-available/default
RUN cp /app/conf/nginx.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/



# RUN touch /etc/nginx/conf.d/default.conf
# RUN cp /app/conf/nginx.conf /etc/nginx/conf.d/default.conf
#



# RUN cp /app/conf/default /etc/nginx/sites-available/default
# RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# CMD [ "nginx", "-g", "daemon off;" ]
# CMD [ "nginx", "-c", "/app/conf/nginx.conf", "-g", "daemon off;"]

# EXPOSE 443
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
# 	-keyout private.key -out certificate.crt -subj "/CN=hasabir"
