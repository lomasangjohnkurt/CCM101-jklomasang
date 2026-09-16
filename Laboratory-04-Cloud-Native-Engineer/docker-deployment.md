#The Container Lifecycle

A Cloud-Native Engineer needs to know how to manage the lifecycle of a Docker container. In this checkpoint, I listed, stopped, verified, and removed the Nginx container.

## 1. List Running Containers

Command:

```bash
docker ps
```

This command displays the Docker containers that are currently running.

## 2. Stop the Running Container

Command:

```bash
docker stop nginx-server
```

This command stops the running Nginx container named `nginx-server`.

## 3. Verify That the Container Is Stopped

Command:

```bash
docker ps -a
```

This command displays all containers, including stopped containers, allowing me to verify that the Nginx container is no longer running.

The status should show something similar to:

```text
Exited
```

## 4. Remove the Container Completely

Command:

```bash
docker rm nginx-server
```

This command permanently removes the stopped `nginx-server` container from the Docker environment.

## Container Lifecycle Summary

| Command                    | Purpose                                             |
| -------------------------- | --------------------------------------------------- |
| `docker ps`                | Lists currently running containers.                 |
| `docker stop nginx-server` | Stops the Nginx container.                          |
| `docker ps -a`             | Lists all containers, including stopped containers. |
| `docker rm nginx-server`   | Removes the stopped Nginx container.                |
