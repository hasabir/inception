FROM debian:bullseye

WORKDIR /app

COPY tools/script.sh /app

RUN apt-get -y update

RUN apt install -y wget\
				php-fpm\
				mariadb-client\
				php-mysql\
				curl\
				nginx\
				php7.4\
				sendmail\
				systemctl\
				php\
				php-cgi

RUN mkdir -p /var/www/html/wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN chown -R root:root /var/www/html/wordpress

COPY ./tools/www.conf /etc/php/7.4/fpm/pool.d

RUN chmod +x /app/script.sh

RUN mkdir /run/php/

ENTRYPOINT ["bash", "/app/script.sh"]