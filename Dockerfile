FROM debian:bullseye

WORKDIR /app

RUN apt-get -y update && \
    apt-get -y install curl zsh git

RUN apt install -y wget\
				php-fpm\
				mariadb-client\
				php-mysql\
				curl\
				nginx\
				php7.4

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

SHELL ["/bin/zsh"]

CMD ["zsh"]