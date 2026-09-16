# Mission Reflection

This laboratory activity helped me understand how containerization can simplify the deployment and management of applications. A Docker container can start much faster than a Virtual Machine because a VM needs to boot a complete operating system, while a container shares the host operating system kernel and only needs the application and its dependencies. In my activity, I was able to pull the Nginx image and run the web server using only a few Docker commands. This showed me how quickly a containerized application can be deployed compared with installing and configuring an operating system and web server on a VM.

The port mapping `-p 8080:80` is necessary because the Nginx web server is listening on port 80 inside the container. Port 8080 on the host is connected to port 80 inside the container, allowing me to access the web server by using `http://localhost:8080`. Without this mapping, the Nginx service would not be directly accessible through the host's port 8080.

When the `docker rm` command is used, the specified container is removed from the Docker environment. Any data stored only inside the container's writable layer can be lost when the container is removed. This is why important application data should normally be stored using Docker volumes or another persistent storage method.

Containerization also changes how developers and IT operations teams work together. Developers can package applications with their dependencies, while operations teams can deploy the same container in different environments. This supports DevOps practices by making application deployment more consistent and easier to manage.

Finally, my GitHub portfolio is evolving from basic cloud computing activities into a more organized collection of practical technical projects. Laboratory 4 adds Docker and containerization experience to my portfolio and demonstrates my ability to document commands, procedures, and results.
