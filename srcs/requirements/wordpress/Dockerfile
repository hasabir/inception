FROM debian:bullseye

WORKDIR /app

COPY . .

RUN apt-get -y update
RUN apt-get -y install curl zsh git mariadb-server vim nginx

RUN apt install -y wget\
				php-fpm\
				mariadb-client\
				php-mysql 

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
# RUN tar -xzvf /tmp/wordpress.tar.gz -C /app/tools
RUN tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html
# RUN chown -R root:root /app/tools/wordpress
RUN chown -R root:root /var/www/html/wordpress
SHELL ["/bin/zsh"]

CMD ["zsh"]