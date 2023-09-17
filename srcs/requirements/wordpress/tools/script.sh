#!/bin/bash
sleep 8

cd ${WP_PATH}

rm -rf *

# systemctl start php7.4-fpm

# systemctl enable php7.4-fpm

# systemctl status php7.4-fpm

wp core download --allow-root


wp config create --dbname=${DB_DATABASE} --dbuser=${DB_USERNAME}\
	 --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST} \
	 --path=${WP_PATH} --allow-root

# wp core install --url=${WP_URI} --title=${WP_TITLE} \
# 		--admin_user=${WP_USER} --admin_password=${WP_PW} \
# 		--admin_email=${WP_EMAIL} --allow-root

# while true; do sleep 1; done

php-fpm7.4 -R -F

# exec $@
