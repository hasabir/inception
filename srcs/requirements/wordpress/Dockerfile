FROM debian:bullseye

# WORKDIR /app

COPY tools/wordpress_script.sh .

RUN apt-get -y update

RUN apt install -y wget\
				php-fpm\
				mariadb-client\
				php-mysql\
				curl\
				nginx\
				php7.4\
				sendmail
				# php

# RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
# RUN tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html


RUN mkdir -p /var/www/html/wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN chown -R root:root /var/www/html/wordpress

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

RUN chmod +x wordpress_script.sh

RUN mkdir /run/php/

CMD ["./wordpress_script.sh"]