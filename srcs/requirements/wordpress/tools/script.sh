cd /var/www/html/wordpress

wp core download --allow-root

# Creating the wp-config.php file using this command.
wp core config --dbname=${DB_DATABASE} --dbuser=${DB_USERNAME} --dbpass=${DB_PASSWORD} --dbhost=mariadb --allow-root

# Installing wordpress using the given environment variables to avoid showing the wordpress installation page everytime we run the containe
wp core install --url=${DB_HOST} --title=DopamInception --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} --a
exec $@