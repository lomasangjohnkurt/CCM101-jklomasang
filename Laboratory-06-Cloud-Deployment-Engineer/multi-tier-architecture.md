# Multi-Tier Architecture

## What is Two-Tier Architecture?

Two-Tier Architecture is a system design that separates an application into two main layers: the application or web tier and the database tier. In this laboratory, Nextcloud serves as the web/application tier while MariaDB serves as the database tier.

## Web/Application Tier

The web/application tier is responsible for providing the user interface and handling requests from users. In this project, the Nextcloud container provides the web interface that users access through a browser. It also processes requests and communicates with the database when information needs to be stored or retrieved.

## Database Tier

The database tier is responsible for storing and managing persistent information used by the application. In this project, MariaDB stores information such as Nextcloud user accounts, configuration information, and file metadata.

## Why Separate Them?

Separating the web application and database into different containers makes the system easier to manage, maintain, and scale. Each container has a specific responsibility, so problems or changes in one tier can be handled without modifying the other tier.
