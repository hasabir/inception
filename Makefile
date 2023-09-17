
default: help

# help:
# 	@echo "\033[93m"
# 	@echo "\033[92m ____Available Makefile targets:___________________________________________\033[00m"
# 	@echo "\033[92m|\033[93m                                                                         \033[92m |\033[00m "
# 	@echo "\033[92m|\033[93m   build       \033[00m- Build the Docker Compose services                       \033[92m |\033[00m "
# 	@echo "\033[92m|\033[93m   up          \033[00m- Start the Docker Compose services in detached mode     \033[92m  |\033[00m"
# 	@echo "\033[92m|\033[93m   down        \033[00m- Stop and remove the Docker Compose services             \033[92m |\033[00m "
# 	@echo "\033[92m|\033[93m   restart     \033[00m- Restart the Docker Compose services                     \033[92m |\033[00m "
# 	@echo "\033[92m|\033[93m   ps          \033[00m- List running containers for the Docker Compose services \033[92m |\033[00m "
# 	@echo "\033[92m|\033[93m   logs        \033[00m- List running containers for the Docker Compose services \033[92m |\033[00m "
# 	@echo "\033[92m|__________________________________________________________________________\033[92m|\033[00m "


help:
	@echo "\033[93m"
	@echo "\033[92m ____Available Makefile targets:___________________________________________\033[00m"
	@echo "\033[92m|\033[93m                                                                         \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   up          \033[00m- Build and Start Docker Compose in detached mode        \033[92m  |\033[00m"
	@echo "\033[92m|\033[93m   clean       \033[00m- Stop and remove the Docker Compose services             \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   fclean       \033[00m- Remove all docker containers and images                \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   volume_clean\033[00m- Stop and remove the Docker Compose services and volumes \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   image_clean \033[00m- Stop and remove the Docker Compose services all images  \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   restart     \033[00m- Restart the Docker Compose services                     \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   ps          \033[00m- List running containers for the Docker Compose services \033[92m |\033[00m "
	@echo "\033[92m|\033[93m   logs        \033[00m- List running containers for the Docker Compose services \033[92m |\033[00m "
	@echo "\033[92m|__________________________________________________________________________\033[92m|\033[00m "



# build:
# 	@docker-compose build

up:
	@docker-compose -f src/docker-compose.yml up --build

clean:
	@docker-compose -f src/docker-compose.yml down

volume_clean:
	@docker-compose -f src/docker-compose.yml -v

image_clean:
	@docker-compose -f src/docker-compose.yml -rmi all

restart:
	@docker-compose -f src/docker-compose.yml restart

fclean:
	

ps:
	@docker-compose -f src/docker-compose.yml ps
logs:
	@docker-compose -f src/docker-compose.yml logs
# .PHONY: build up down restart ps
