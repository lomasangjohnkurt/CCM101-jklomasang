# Cloud Infrastructure Components

## 1. Compute Resources

### Purpose

Compute resources provide the processing power needed to run applications, services and workloads. They include CPU, memory, virtual machines, containers and other processing resources.

### Importance in Cloud Computing

Compute resources are important because applications need processing capacity to operate. Cloud computing allows organizations to obtain computing resources when needed without having to purchase and maintain physical servers. The KillerCoda Linux environment provides a virtualized computing environment with allocated CPU and memory resources. The CPU information obtained using `lscpu` and memory information obtained using `free -h` demonstrate the compute resources available to the Linux server.



## 2. Storage Resources

### Purpose

Storage resources provide persistent space for the operating system, applications, configuration files and user data.

### Importance in Cloud Computing

Storage is essential because cloud applications need a reliable location to store and retrieve information. Cloud providers offer different storage technologies for different performance, capacity and availability requirements. The Linux environment uses virtual disk storage. The `df -h` command was used to examine disk capacity and available storage, while `findmnt` was used to identify mounted file systems.

---

## 3. Networking Resources

### Purpose

Networking resources allow users, applications, servers and cloud services to communicate with each other.

### Importance in Cloud Computing

Networking is essential for connecting cloud resources and allowing users to access applications and services. IP addresses, networks, routing and security controls help manage communication between resources. The KillerCoda Linux server has a network interface and an IP address that allow it to communicate within its cloud environment. The `hostname -I` command was used to identify the server's IP address.

---

## 4. Operating System

### Purpose

The operating system manages hardware resources and provides the environment required to run applications and services.

### Importance in Cloud Computing

The operating system is important because cloud workloads need a stable platform on which applications and services can operate. Linux is widely used in cloud environments because of its flexibility, stability, security features, and command-line capabilities. The KillerCoda environment provides an Ubuntu Linux operating system. Commands such as `cat /etc/os-release` and `uname -r` were used to identify the operating system and kernel version.
