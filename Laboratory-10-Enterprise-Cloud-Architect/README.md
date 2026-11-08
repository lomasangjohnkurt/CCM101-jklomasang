
# Laboratory 10: Enterprise Cloud Architect

## Project Title
**CloudNova Private Cloud Storage**

CloudNova is a self-hosted private cloud storage solution designed to provide secure file management, file synchronization, and reliable data storage. It uses a multi-tier architecture powered by Docker, Nextcloud, and MariaDB, with automated database backups and firewall protection.

---

## Application Stack

- **Operating System:** Ubuntu Server 22.04 / 24.04 LTS
- **Containerization Engine:** Docker Engine
- **Orchestration:** Docker Compose
- **Application Layer:** Nextcloud (PHP Application Container)
- **Database Layer:** MariaDB 10.11 Container
- **Network Security:** UFW (Uncomplicated Firewall)
- **Scripting and Automation:** Bash Shell
- **Task Scheduling:** Cron Service

---

## Project Objectives

1. **Deploy a Multi-Tier Cloud Application:** Separate the application and database layers using Docker containers and an isolated Docker network.
2. **Implement Persistent Storage:** Use Docker named volumes and persistent directories to protect application files and database records.
3. **Configure Firewall Security:** Apply UFW rules to restrict incoming connections and allow only the necessary services.
4. **Automate Database Backups:** Create a Bash script that generates daily MariaDB database backups and schedule it using Cron.
5. **Document Infrastructure Operations:** Provide procedures for installation, deployment, verification, maintenance, and disaster recovery.

---

## Application Access

After successfully deploying the application and confirming that the required containers are running, access CloudNova through a web browser.

### Web Application

- **Local Access:** `http://localhost:8080`


## Project Documentation

| File | Description |
|---|---|
| `README.md` | Project overview, architecture, and application access |
| `architecture-diagram.png` | Visual representation of the cloud infrastructure |
| `docker-compose.yml` | Docker services and container configuration |
| `automation-script.sh` | Automated database backup script |
| `operational-manual.md` | Installation, deployment, and maintenance procedures |
| `final-reflection.md` | Project experience and learning reflection |

---
