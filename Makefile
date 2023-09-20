
.DEFAULT_GOAL := help

help:
	@echo "\033[93m"
	@echo "\033[92m ____Available Makefile targets:___________________________________________\033[00m"
	@echo "\033[92m|\033[93m                                                                         \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   up          \033[00m- Build and Start Docker Compose in detached mode        \033[92m  |\033[00m"
	@echo "\033[92m|\033[93m   clean       \033[00m- Stop and remove the Docker Compose services             \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   fclean      \033[00m- Remove all docker containers and images                \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   cache_clean \033[00m- Remove all docker cache                                  \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   volume_clean\033[00m- Stop and remove the Docker Compose services and volumes \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   image_clean \033[00m- Stop and remove the Docker Compose services and images  \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   restart     \033[00m- Restart the Docker Compose services                     \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   ps          \033[00m- List running containers for the Docker Compose services \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   logs        \033[00m- Show logs for the Docker Compose services                \033[92m |\033[00m "
	@echo "\033[92m|__________________________________________________________________________\033[92m|\033[00m "

up:
	@docker-compose -f srcs/docker-compose.yml up --build -d

clean:
	@docker-compose -f srcs/docker-compose.yml down

volume_clean:
	@docker-compose -f srcs/docker-compose.yml down -v

image_clean:
	@docker-compose -f srcs/docker-compose.yml down --rmi all

restart:
	@docker-compose -f srcs/docker-compose.yml restart

fclean: clean image_clean

cache_clean:
	@docker system prune --all

ps:
	@docker-compose -f srcs/docker-compose.yml ps

logs:
	@docker-compose -f srcs/docker-compose.yml logs
