FROM debian:bullseye

WORKDIR /app

COPY . .

RUN apt-get -y update && \
    apt-get -y install curl zsh git
RUN apt-get install -y mariadb-server

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


RUN chmod 777 /app/tools/test_script.sh

RUN /etc/init.d/mariadb start

SHELL ["/bin/zsh"]

CMD [ "zsh" ]
# CMD [ "/app/tools/test_script.sh" ]

# CMD ["mariadb"]
# RUN zsh

# RUN service mysql


# FROM debian

# WORKDIR /app

# RUN apt-get -y update && \
#     apt-get -y install curl zsh git
# RUN apt-get install -y mariadb-server

# RUN /etc/init.d/mariadb start

# RUN service mariadb start

# RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# SHELL ["/bin/zsh"]

# CMD ["mariadb"]
# # RUN zsh

# # RUN service mysql


