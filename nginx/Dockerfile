FROM  ubuntu
RUN apt update && apt install -y nginx

WORKDIR /app

COPY . .

RUN /usr/sbin/nginx

# RUN nginx -c /app/nginx.conf

# USER nginx
# CMD [ "nginx", "-g", "daemon off;" ]

CMD [ "nginx", "-c", "/app/nginx.conf", "-g", "daemon off;"]