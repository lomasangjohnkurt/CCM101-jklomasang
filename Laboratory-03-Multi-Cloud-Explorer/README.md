# Laboratory Activity 3 – Multi-Cloud Explorer

---

## Mission Overview

Congratulations,  
Your successful completion of the Cloud Infrastructure Assessment has earned you a promotion to the Cloud 
Evaluation Team at CloudNova Technologies. 
A new client plans to migrate its existing IT infrastructure to the cloud. However, the client is unsure whether to 
adopt Amazon Web Services (AWS), Microsoft Azure, or Google Cloud Platform (GCP). 
As part of the Cloud Evaluation Team, your mission is to explore the world's leading cloud platforms, compare 
their services, and recommend the most appropriate provider for different business scenarios. 
Using KillerCoda, official cloud documentation, and your GitHub Cloud Computing Portfolio, you will investigate 
each platform, analyze its capabilities, and prepare a professional recommendation report. 
Remember: A cloud engineer doesn't simply choose the most popular cloud provider—they choose the 
one that best solves the client's problem. 

---

## Mission Objectives

At the end of this laboratory activity, I should be able to:

* Explore the major public cloud platforms.
* Identify the core services offered by AWS, Azure, and GCP.
* Compare cloud services across different providers.
* Analyze business requirements and recommend appropriate cloud solutions.
* Create technical documentation using Markdown.
* Continue developing my GitHub Cloud Computing Portfolio.

---

## Cloud Platforms Explored

The three cloud platforms explored in this activity are:

1. **Amazon Web Services (AWS)**
2. **Microsoft Azure**
3. **Google Cloud Platform (GCP)**

Each platform provides computing, storage, networking, identity, database, security and other cloud services. However, they have different strengths and are suitable for different business requirements.

---

## Linux Investigation

### Linux Server Information

For this checkpoint, I launched a KillerCoda Linux Playground and used Linux commands to identify the server's operating system, CPU, memory, and disk information.

### Linux Commands Used

#### 1. Operating System

```bash
cat /etc/os-release
```

This command displays information about the Linux operating system.

#### 2. CPU Information

```bash
lscpu
```

This command displays information about the CPU, architecture, cores, and processor.

#### 3. Memory

```bash
free -h
```

This command displays the total, used, and available memory in a readable format.

#### 4. Disk Space

```bash
df -h
```

This command displays disk space usage for the Linux file systems.

---

## Linux Server Results

The following information was collected from the KillerCoda Linux Playground.

| Information             | Result                                        |
| ----------------------- | --------------------------------------------- |
| **Operating System**    | Ubuntu                                        |
| **Kernel**              | Linux 6.8.0-138                               |
| **CPU Model**           | Intel Xeon E312xx (Sandy Bridge, IBRS update) |
| **CPU Architecture**    | x86_64                                        |
| **Number of CPU Cores** | 1                                             |
| **Total RAM**           | Approximately 1.9 GiB                         |
| **Disk Capacity**       | Approximately 20 GB                           |
| **Main Partition**      | `/dev/vda1`                                   |

---

## Cloud Migration of the Linux Server

If this Linux server were migrated to the cloud, all three major cloud providers could host a similar Linux-based virtual server.

| Cloud Provider      | Cloud Service          | Purpose                                    |
| ------------------- | ---------------------- | ------------------------------------------ |
| **AWS**             | Amazon EC2             | Host the Linux server as a virtual machine |
| **Microsoft Azure** | Azure Virtual Machines | Host the Linux server as a virtual machine |
| **Google Cloud**    | Google Compute Engine  | Host the Linux server as a virtual machine |

---

## Mission Outputs

The following documents were created as part of this laboratory activity:

* `aws-research.md` – Research about Amazon Web Services.
* `azure-research.md` – Research about Microsoft Azure.
* `gcp-research.md` – Research about Google Cloud Platform.
* `cloud-platform-comparison.md` – Comparison of AWS, Azure, and GCP.
* `client-recommendations.md` – Cloud platform recommendations and decision matrix.
* `reflection.md` – Personal reflection about the mission.
