# The Cloud-Native Engineer

## Mission Overview

Congratulations! After successfully guiding our clients through multi-cloud evaluations, you have been 
promoted to the Cloud-Native Engineering Team at CloudNova Technologies. 
Modern cloud computing is no longer just about renting Virtual Machines (VMs) from AWS or Azure. Today's 
enterprise applications are built using lightweight, portable, and lightning-fast technologies called Containers. 
Your new mission is to understand the shift from traditional virtualization to containerization. 
Using the KillerCoda Playground, you will step into the shoes of a Cloud-Native Engineer. You will research the 
differences between VMs and containers, execute your very first Docker commands, and deploy a live, 
containerized web server in seconds. 
Remember: A traditional system administrator manages servers, but a cloud-native engineer manages 
the services running on them

## Objectives 

At the end of this laboratory activity, you should be able to: 

* Differentiate between traditional Virtual Machines (VMs) and Containers. 
* Access a Docker-enabled cloud environment using KillerCoda. 
* Execute fundamental Docker CLI (Command Line Interface) commands. 
* Pull, run, manage, and terminate a containerized application (Nginx). 
* Create professional technical documentation of container operations using Markdown. 
*Continue developing a well-organized GitHub Cloud Computing Portfolio. 

## Docker Commands Executed

### Verify Docker

```bash
docker --version
```

This command checks the installed Docker version.

```bash
docker info
```

This command displays information about the Docker environment and confirms that Docker is running.

### Deploy Nginx

```bash
docker pull nginx
```

This command downloads the official Nginx image from Docker Hub.

```bash
docker run -d --name nginx-server -p 8080:80 nginx
```

This command creates and starts an Nginx container in detached mode and maps host port 8080 to container port 80.

```bash
curl http://localhost:8080
```

This command sends a request to the Nginx web server and displays its HTML response.

### Container Lifecycle

```bash
docker ps
```

This command lists the running containers.

```bash
docker stop nginx-server
```

This command stops the Nginx container.

```bash
docker ps -a
```

This command lists all containers, including stopped containers.

```bash
docker rm nginx-server
```

This command removes the stopped Nginx container.

## Skills Learned

This laboratory activity I learned the basic concepts of containerization and Docker. I learned how to pull Docker images, create and run containers, map network ports, test a web server and manage the container lifecycle. 

## Challenges Encountered

One challenge I encountered was becoming familiar with the Docker command line interface. I also needed to understand how port mapping works when accessing a web server inside a container. 
