#!/bin/bash

echo "test+++++++++++++++++++++++++++++++++++"
cd /var/www/html/wordpress
wp core download --allow-root

ls

wp config create --dbname=${DB_DATABASE} --dbuser=${DB_USERNAME}\
	 --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST} --allow-root
echo I exited with $?
echo _______________________________________
ls 
echo ___________________________________
wp core install --url=\'hasabir.42.fr\' --title=DopamInception \
		--admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} --allow-root
exec $@

# wp config create --allow-root
# wp config create --allow-root --dbname=${DB_DATABASE} \
# 		--dbuser=${DB_USERNAME} --dbpass=${DB_PASSWORD} \
# 		--dbhost=${DB_HOST}
		# --dbhost=mariadb
# --skip-check --extra-php 
	# cvcvxvxc
		# <<PHP
# define( 'WP_DEBUG', true );
# define( 'WP_DEBUG_LOG', true );
# define( 'WP_DEBUG_DISPLAY', false );
# define( 'DISABLE_WP_CRON', true );
# define('WPMS_ON', false);
# define('DB_NAME', ${DB_DATABASE});
# define('DB_USER', ${DB_USERNAME});
# define('DB_PASSWORD', ${DB_USERNAME});
# define('DB_HOST', 'mariadb');
# PHP

# Install WordPress using the given environment variables
# wp core install --url=${DB_HOST} --title="DopamInception" --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} --allow-root






# cd /var/www/html/wordpress
# # touch wp-config.php
# # Download WordPress
# wp core download --allow-root
# # Generate wp-config.php
# wp core config --allow-root --dbname="${DB_DATABASE}" --dbuser="${DB_USERNAME}" --dbpass="${DB_PASSWORD}" --dbhost="mariadb" 
# # Install WordPress
# wp core install --allow-root --url="${DB_HOST}" --title="DopamInception" --admin_user="${WP_USER}" --admin_password="${WP_PW}" --admin_email="${WP_EMAIL}"
