FROM  ubuntu
RUN apt update && apt install -y nginx

WORKDIR /app

COPY . .

RUN /usr/sbin/nginx
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048\
	-keyout /etc/ssl/private/nginx-selfsigned.key\
	-out /etc/ssl/certs/nginx-selfsigned.crt

CMD [ "nginx", "-c", "/app/nginx.conf", "-g", "daemon off;"]