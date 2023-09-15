FROM debian:bullseye

WORKDIR /app

COPY tools/script.sh /app

RUN apt-get -y update
# RUN apt-get -y install curl zsh git mariadb-server vim nginx

RUN apt install -y wget\
				php-fpm\
				mariadb-client\
				php-mysql\
				curl\
				nginx\
				php7.4

RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
RUN tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html

# COPY ./tools/wordpress /var/www/html/wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN chown -R root:root /var/www/html/wordpress

COPY ./tools/www.conf /etc/php/7.4/fpm/pool.d

RUN chmod +x /app/script.sh

RUN mkdir /run/php/

ENTRYPOINT ["bash", "/app/script.sh"]

CMD ["php-fpm7.4", "-R", "-F"]
# RUN chown -R root:root /app/tools/wordpress
# RUN tar -xzvf /tmp/wordpress.tar.gz -C /app/tools

# SHELL ["/bin/zsh"]

# CMD ["zsh"]