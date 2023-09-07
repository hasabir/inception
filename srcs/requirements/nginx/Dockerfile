
FROM debian:bullseye

RUN apt update && apt install -y nginx openssl

WORKDIR /app

COPY . .
# COPY /app/tools/index.php /var/www/html

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	# -keyout private.key -out certificate.crt -subj "/CN=hasabir"
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 	-keyout private.key -out certificate.crt -subj "/CN=localhost"

RUN mkdir -p /etc/nginx/ssl

RUN cp private.key /etc/nginx/ssl/
RUN cp certificate.crt /etc/nginx/ssl/
RUN cp /app/tools/index.php /var/www/html

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html
CMD [ "nginx", "-c", "/app/nginx.conf", "-g", "daemon off;"]
