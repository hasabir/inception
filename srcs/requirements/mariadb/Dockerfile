FROM debian:bullseye

WORKDIR /app

COPY . .

RUN apt-get -y update
RUN apt-get install -y mariadb-server

RUN chmod 777 /app/tools/test_script.sh


# CMD ["/app/tools/test_script.sh" ]
