FROM debian:bullseye

COPY tools/mariadb_script.sh .

RUN apt-get -y update
RUN apt-get install -y mariadb-server

RUN chmod 777 mariadb_script.sh


CMD ["./mariadb_script.sh" ]
