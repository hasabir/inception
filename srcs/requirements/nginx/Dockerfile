
FROM debian:bullseye

RUN apt update && apt install -y nginx openssl

WORKDIR /app

COPY . .

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout private.key -out certificate.crt -subj "/CN=hasabir.42.fr"

RUN mkdir -p /etc/nginx/ssl

RUN cp private.key /etc/nginx/ssl/
RUN cp certificate.crt /etc/nginx/ssl/

CMD [ "nginx", "-c", "/app/nginx.conf", "-g", "daemon off;"]
