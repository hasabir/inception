
FROM debian:bullseye

RUN apt update
RUN apt install -y	nginx\
					openssl
	
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 	-keyout /etc/ssl/private.key -out /etc/ssl/certificate.crt -subj "/CN=hasabir.42.fr"


RUN chmod 755 /var/www/html
COPY conf/nginx.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

RUN mkdir -p /run/nginx


CMD [ "nginx", "-g", "daemon off;"]