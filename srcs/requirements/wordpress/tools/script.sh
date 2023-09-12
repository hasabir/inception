CREATE DATABASE wordpress_db;
CREATE USER 'hasabir'@'localhost' IDENTIFIED BY '123';
CREATE USER 'hasabir'@'%' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON wordpress_db.* to hasabir@'%';
FLUSH PRIVILEGES;