
# CLOUDNOVA PRIVATE CLOUD STORAGE
## Operational Manual
### CCM101 - Laboratory Activity 10
### Mission 10: The Enterprise Cloud Architect

---

## 1. Project Overview

CloudNova Private Cloud Storage is a private cloud
storage system designed to provide secure and
reliable file storage using open-source technologies.

The project uses Ubuntu Server as the operating
system, Docker for containerization, Nextcloud as
the cloud storage application, and MariaDB as the
database management system.

The purpose of this project is to demonstrate
cloud infrastructure deployment, container
management, persistent storage, firewall
configuration, and backup automation.

### Objectives

- Deploy a multi-tier cloud application.
- Configure persistent database storage.
- Implement host-based firewall security.
- Automate database backup procedures.
- Schedule maintenance tasks using Cron.
- Provide operational documentation.

---

## 2. System Architecture

The infrastructure consists of the following
components:

1. Host Machine - Windows laptop used to manage
   the virtual infrastructure.
2. VirtualBox - Hypervisor used to run Ubuntu Server.
3. Ubuntu Server - Host operating system for Docker.
4. UFW Firewall - Controls incoming connections.
5. Docker Engine - Runs the application containers.
6. Nextcloud - Web-based cloud storage application.
7. MariaDB - Database management system.
8. Docker Volumes - Persistent storage for application
   and database data.
9. Bash Script - Automates database backups.
10. Cron - Schedules automatic backup execution.

### Application Access

Nextcloud is accessed through a web browser:

http://localhost:8080

SSH administration is available through:

127.0.0.1:2222

---

## 3. Hardware Requirements

The following hardware resources are used:

- Laptop or desktop computer
- Minimum 4 GB RAM recommended
- Minimum 30 GB virtual disk
- Internet connection
- Keyboard and monitor

The actual resource allocation depends on the
capabilities of the host machine.

---

## 4. Software Requirements

The infrastructure uses the following software:

| Software | Purpose |
|---|---|
| Windows | Host operating system |
| VirtualBox | Virtual machine management |
| Ubuntu Server | Server operating system |
| Docker | Container management |
| Docker Compose | Multi-container deployment |
| Nextcloud | Cloud storage application |
| MariaDB | Database management |
| UFW | Firewall protection |
| Bash | Automation scripting |
| Cron | Task scheduling |
| GitHub | Project documentation |

---

## 5. Installation and Deployment

### 5.1 Ubuntu Server Installation

Ubuntu Server was installed inside a VirtualBox
virtual machine using a 30 GB virtual disk.

The installation included:
- User account creation
- Network configuration
- Disk configuration
- OpenSSH Server installation

### 5.2 Docker Installation

Docker Engine and Docker Compose were installed
on Ubuntu Server.

Verify Docker:

```bash
sudo docker --version
```

Verify Docker Compose:

```bash
sudo docker compose version
```

### 5.3 Application Deployment

The application is deployed using Docker Compose.

Navigate to the project directory:

```bash
cd ~/cloudnova
```

Start the application:

```bash
sudo docker compose up -d
```

Check running containers:

```bash
sudo docker ps
```

Access Nextcloud:

http://localhost:8080

---

## 6. Docker Compose Configuration

The Docker Compose configuration defines two
main services:

### Nextcloud
- Provides the cloud storage interface.
- Connects to the MariaDB database.
- Uses persistent application storage.
- Exposes port 8080 to the host.

### MariaDB
- Stores application database records.
- Uses persistent database storage.
- Communicates with Nextcloud through
  an internal Docker network.

### Persistent Volumes

The system uses the following volumes:

- db_data - Stores MariaDB database files.
- nextcloud_data - Stores Nextcloud application data.

Persistent volumes allow data to remain available
even after containers are restarted or recreated.

---

## 7. Firewall Configuration

UFW is configured to protect Ubuntu Server.

### Firewall Rules

Default incoming traffic is denied.
Default outgoing traffic is allowed.

Required ports:

| Port | Service | Purpose |
|---|---|---|
| 22 | SSH | Remote administration |
| 8080 | Nextcloud | Web application |

### Firewall Commands

Set default deny:

```bash
sudo ufw default deny incoming
```

Allow outgoing:

```bash
sudo ufw default allow outgoing
```

Allow SSH:

```bash
sudo ufw allow 22/tcp
```

Allow Nextcloud:

```bash
sudo ufw allow 8080/tcp
```

Enable firewall:

```bash
sudo ufw enable
```

Check firewall:

```bash
sudo ufw status verbose
```

---

## 8. Backup Automation

The system uses a Bash script to create database
backups automatically.

The backup script:
1. Creates a backup directory.
2. Exports the MariaDB database.
3. Compresses the database backup.
4. Removes old backups after seven days.
5. Reports backup success or failure.

### Backup Directory

```text
/opt/cloudnova/backups/
```

### Execute Backup Manually

```bash
sudo /opt/cloudnova/backup.sh
```

### Verify Backup Files

```bash
sudo ls -lh /opt/cloudnova/backups
```

Database backups are stored in compressed
SQL files for recovery purposes.

---

## 9. Cron Scheduling

Cron is used to automate the backup script.

### Scheduled Task

```cron
0 2 * * * /opt/cloudnova/backup.sh >> /opt/cloudnova/backups/backup.log 2>&1
```

This configuration executes the backup script
every day at 2:00 AM.

### Check Cron Configuration

```bash
sudo crontab -l
```

### Check Cron Service

```bash
sudo systemctl status cron
```

---

## 10. Troubleshooting

### Docker Containers Are Not Running

Check containers:

```bash
sudo docker ps -a
```

View logs:

```bash
sudo docker compose logs
```

Restart application:

```bash
sudo docker compose restart
```

### Nextcloud Cannot Connect to Database

Check MariaDB container:

```bash
sudo docker logs cloudnova-db
```

Check application logs:

```bash
sudo docker logs cloudnova-app
```

Verify database credentials and database host.

### Nextcloud Cannot Be Accessed

Check application status:

```bash
sudo docker compose ps
```

Check firewall:

```bash
sudo ufw status
```

Check listening ports:

```bash
sudo ss -tulpn
```

### SSH Connection Failed

Check SSH service:

```bash
sudo systemctl status ssh
```

Verify VirtualBox port forwarding configuration.

### Backup Failed

Check container status:

```bash
sudo docker ps
```

Check backup directory permissions:

```bash
sudo ls -ld /opt/cloudnova/backups
```

Review backup log:

```bash
sudo cat /opt/cloudnova/backups/backup.log
```

---

## 11. Disaster Recovery

Disaster recovery procedures help restore
the application after system failure.

### 11.1 Restart Application

```bash
cd ~/cloudnova
sudo docker compose restart
```

### 11.2 Recreate Containers

```bash
sudo docker compose up -d
```

### 11.3 Restore Database Backup

Restore a compressed SQL backup:

```bash
gunzip -c /opt/cloudnova/backups/cloudnova_db_BACKUP.sql.gz | sudo docker exec -i cloudnova-db mariadb -u root -p nextcloud
```

Replace BACKUP with the actual backup filename.

Enter the database password when prompted.

### 11.4 Restart Ubuntu Server

```bash
sudo reboot
```

After reboot, verify:

```bash
sudo docker ps
```

### Recovery Considerations

Database backups should be stored securely
and copied to another storage location.

Application data must also be backed up
to support complete recovery.

---

## 12. Maintenance Procedures

Regular maintenance improves system reliability.

### Update Ubuntu

```bash
sudo apt update
sudo apt upgrade -y
```

### Check Disk Usage

```bash
df -h
```

### Check Memory Usage

```bash
free -h
```

### Check Docker Resources

```bash
sudo docker stats
```

### Check Application Logs

```bash
sudo docker compose logs
```

### Check Backup Files

```bash
sudo ls -lh /opt/cloudnova/backups
```

### Restart Services When Necessary

```bash
sudo systemctl restart docker
```

---

## 13. Security Considerations

The infrastructure implements several security
measures:

- Default deny incoming firewall policy.
- Restricted access to required ports.
- SSH remote administration.
- Private Docker network for application services.
- Persistent storage for database data.
- Automated database backups.
- Password protection for application accounts.
- Regular operating system updates.

### Additional Security Recommendations

- Use strong and unique passwords.
- Avoid exposing MariaDB directly to the internet.
- Enable HTTPS for secure web access.
- Store backups in an external location.
- Protect SSH access using secure authentication.
- Never upload database passwords to public GitHub.
- Regularly update Docker images and applications.
- Monitor server logs and resource usage.

---
