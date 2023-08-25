# FROM  ubuntu
# RUN apt update && apt install -y nginx openssl

# WORKDIR /app

# COPY . .

# RUN /usr/sbin/nginx



# CMD ["nginx", "-g", "daemon off;"]
# COPY nginx.conf /etc/nginx/nginx.conf


FROM ubuntu

RUN apt update && apt install -y nginx openssl

WORKDIR /app

COPY . .

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout private.key -out certificate.crt -subj "/CN=localhost"

RUN mkdir -p /etc/nginx/ssl

RUN cp private.key /etc/nginx/ssl/
RUN cp certificate.crt /etc/nginx/ssl/

CMD [ "nginx", "-c", "/app/nginx.conf", "-g", "daemon off;"]
