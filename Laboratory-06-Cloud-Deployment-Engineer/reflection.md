# Reflection

This laboratory activity helped me understand why Docker Compose is useful when deploying applications that require multiple containers. Writing a `docker-compose.yml` file makes a cloud engineer's job easier because the configuration for the entire application can be written in one file. Instead of manually typing many commands to create and configure each container, the engineer can use one command such as `docker-compose up -d` to deploy the defined services. It also makes the deployment easier to repeat because the same configuration file can be used again.

I also learned that YAML is sensitive to indentation. An indentation error, such as using a Tab instead of spaces or placing a line at the wrong level, can cause the Compose file to become invalid or can change how the configuration is interpreted. This showed me that configuration files must be written carefully and checked before deployment.

Environment variables such as `MYSQL_PASSWORD`, `MYSQL_DATABASE`, and `MYSQL_USER` are important because they provide configuration information to the containers. They allow the Nextcloud application and MariaDB database to use the correct database credentials and settings. I also learned that `MYSQL_HOST=database` allows the Nextcloud container to find the database service using its Docker Compose service name.

Deploying Nextcloud and MariaDB in only a few minutes was a useful experience because it showed me how automation can simplify cloud deployment. Seeing the Nextcloud setup page in the browser made the connection between the configuration file, containers, networking, and the application more understandable.

My understanding of Cloud Computing has developed from basic concepts into practical cloud infrastructure skills. I have learned about Linux systems, cloud infrastructure, multi-cloud environments, containers, data services, and now multi-container deployment. This mission helped me understand that cloud engineering involves not only running applications but also designing repeatable and manageable infrastructure.
