FROM debian:bullseye

WORKDIR /app

COPY . .

RUN apt-get -y update
RUN apt-get install -y mariadb-server

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod 777 /app/tools/test_script.sh

CMD [ "/app/tools/test_script.sh" ]
