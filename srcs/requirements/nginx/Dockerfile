
FROM debian:bullseye

RUN apt update && apt install -y nginx openssl

WORKDIR /app

COPY . .
COPY tools /var/www/html

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	# -keyout private.key -out certificate.crt -subj "/CN=hasabir"
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 	-keyout /etc/ssl/private.key -out /etc/ssl/certificate.crt -subj "/CN=localhost"


RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

# EXPOSE 443
CMD [ "nginx", "-c", "/app/conf/nginx.conf", "-g", "daemon off;"]
