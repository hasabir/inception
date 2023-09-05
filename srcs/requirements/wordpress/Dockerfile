FROM debian:bullseye

WORKDIR /app

COPY . .

RUN apt-get -y update && \
    apt-get -y install curl zsh git

RUN apt install -y wget\
				php-fpm\
				mariadb-client\
				php-mysql

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
RUN tar -xzvf /tmp/wordpress.tar.gz -C /app/tools
RUN chown -R root:root /app/tools/wordpress
SHELL ["/bin/zsh"]

CMD ["zsh"]