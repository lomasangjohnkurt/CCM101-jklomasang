# Docker Compose Guide

## The `services:` Block

The `services:` block defines the containers that make up the application. In our Compose file, there are two services: `database` and `app`.

The `database` service uses the `mariadb:10.6` image and provides the database needed by Nextcloud. The `app` service uses the `nextcloud` image and provides the web application that users access through a browser.

The structure is:

```yaml
services:
  database:
    image: mariadb:10.6

  app:
    image: nextcloud
```

Each service has its own configuration, such as the Docker image, environment variables, and port settings.

## How Does Nextcloud Find the Database?

The Nextcloud application finds the MariaDB database through the `MYSQL_HOST` environment variable.

Our Compose file contains:

```yaml
- MYSQL_HOST=database
```

The value `database` refers to the name of the MariaDB service defined under the `services:` block. Docker Compose provides networking between the services, allowing the Nextcloud container to communicate with the database using the service name.

Therefore, Nextcloud does not need to use an IP address to find MariaDB.

## Environment Variables

Environment variables are used to provide configuration values to the containers. For example:

```yaml
- MYSQL_PASSWORD=cloudnova_pass
- MYSQL_DATABASE=nextcloud_db
- MYSQL_USER=nextcloud_user
```

These variables tell Nextcloud and MariaDB which database, username, and password should be used for communication.

## `docker run` vs. `docker-compose up -d`

The `docker run` command is normally used to create and start an individual Docker container. When an application requires several containers, multiple `docker run` commands may need to be entered and configured manually.

The `docker-compose up -d` command reads the `docker-compose.yml` file and creates the services defined in it. In this laboratory, one command was used to start both the Nextcloud application and MariaDB database in the background.

### Comparison

| Command                | Purpose                                                     |
| ---------------------- | ----------------------------------------------------------- |
| `docker run`           | Creates and runs an individual container                    |
| `docker-compose up -d` | Creates and starts all services defined in the Compose file |
| `docker-compose ps`    | Displays the status of Compose services                     |
| `docker-compose down`  | Stops and removes the containers created by Compose         |

