
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

RUN cp /app/conf/nginx.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

RUN mkdir -p /run/nginx
