#!/bin/bash

service mariadb start

sleep 8

mariadb -e "CREATE DATABASE IF NOT EXISTS \`${DB_DATABASE}\`;"

mariadb -e "CREATE USER IF NOT EXISTS \`${DB_USERNAME}\`@'%'\
		 IDENTIFIED BY '${DB_PASSWORD}';"

mariadb -e "GRANT ALL PRIVILEGES ON \`${DB_DATABASE}\`.* \
		TO \`${DB_USERNAME}\`@'%' IDENTIFIED BY '${DB_PASSWORD}';"

mariadb -e "CREATE USER IF NOT EXISTS \`root\`@'%'\
		 IDENTIFIED BY '${DB_ROOT_PASSWORD}';"


# mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"

mariadb -e "FLUSH PRIVILEGES;"

# service mariadb stop

mysqladmin -u root -p${DB_ROOT_PASSWORD} shutdown


exec mysqld_safe --bind_address=0.0.0.0

# mariadb #run in the background