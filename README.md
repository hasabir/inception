# Inception

This project focuses on system administration using Docker. It aims to set up a small infrastructure composed of different services in a virtualized environment.
---

## Features
- Virtualize multiple Docker images.
- Set up and manage services like NGINX, WordPress, and MariaDB.
- Configure Docker containers, networks, and volumes.
- Ensure containers restart on crash.
- Use Docker Compose for orchestration.
---

## Installation
1. Clone the repository:

```bash
git clone <repository-url>
cd inception
```
2. Usage:
```bash
make help
```
## Configuration File

The `docker-compose.yml` file is used to customize the environment's behavior. Below are the available options:

**services:** Define the services to run (NGINX, WordPress, MariaDB).

**volumes:** Specify volumes for persistent data storage.

**networks:** Define the network settings for inter-container communication.

**environment:** Set environment variables for configuration.
---

## Additional Configurations

1. **NGINX**:
    - Configured with TLSv1.2 or TLSv1.3.
    - Acts as the entry point for the infrastructure.

2. **WordPress**:
    - Installed with php-fpm.
    - Uses a dedicated volume for files and another for the database.

3. **MariaDB**:
    - Database container for WordPress.
    - Uses a dedicated volume for data storage.
  ---
<p align="left">
  <a href="https://www.docker.com/" target="_blank" rel="noreferrer">
    <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg" alt="Docker" width="40" height="40"/>
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://nginx.org/" target="_blank" rel="noreferrer">
    <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/nginx/nginx-original.svg" alt="NGINX" width="40" height="40"/>
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://www.mysql.com/" target="_blank" rel="noreferrer">
    <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original-wordmark.svg" alt="MariaDB" width="40" height="40"/>
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://wordpress.org/" target="_blank" rel="noreferrer">
    <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/wordpress/wordpress-original.svg" alt="WordPress" width="40" height="40"/>
  </a>
</p>
