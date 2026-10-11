# Laboratory 07 – Cloud Operations Engineer

## Mission Overview

Congratulations! Your ability to deploy multi-tier architectures has proven your technical capabilities. 
You have now been promoted to the Cloud Operations Team (often referred to in the industry as Site Reliability 
Engineering, or SRE) at CloudNova Technologies. 
Deploying a cloud application is only the first step; keeping it running smoothly is the real challenge. 
When a server crashes or a web page takes ten seconds to load, you cannot simply guess what is wrong. You 
must rely on Observability and Monitoring to see inside your infrastructure. 
Using the KillerCoda Playground, you will step into the role of a Cloud Operations Engineer. You will 
establish a performance baseline for your Linux server, deploy a containerized application, generate artificial web 
traffic, and hunt down performance metrics and system logs to prove the application is healthy. 
Remember: A developer hopes the application works; a Site Reliability Engineer uses metrics and logs to 
prove it.

## Objectives

- At the end of this laboratory activity, you should be able to: 
- Utilize native Linux command-line tools to monitor host CPU, Memory, and Disk capacity. 
- Deploy a web container and track its real-time performance using Docker metrics. 
- Generate web traffic and extract application access logs for analysis. 
- Translate raw performance data into a readable technical report using Markdown. 
- Continue expanding a professional GitHub Cloud Computing Portfolio.

## Monitoring Commands Executed

### Check Memory

```bash
free -h
```

This command was used to check the server's RAM usage and total memory.

### Check Disk

```bash
df -h /
```

This command was used to determine the storage capacity and current usage of the root file system.

### Monitor Processes and CPU

```bash
top
```

This command was used to observe running processes, CPU utilization, memory usage, and system load.

### Deploy Nginx

```bash
docker run -d --name client-website -p 8080:80 nginx
```

This command created and started the Nginx web server container.

### Generate Web Traffic

```bash
curl http://localhost:8080
```

The command was executed three times to simulate successful website visits.

### Generate an HTTP 404 Error

```bash
curl http://localhost:8080/hidden-admin-page
```

This command generated a request for a page that does not exist.

### View Application Logs

```bash
docker logs client-website
```

This command displayed the HTTP requests recorded by the Nginx container.

### Monitor Container Metrics

```bash
docker stats
```

This command displayed real-time CPU, memory, network and other resource metrics for running Docker containers.

## Skills Learned

Through this laboratory activity, I learned how to:

- Establish a Linux server performance baseline.
- Monitor CPU, memory, and disk resources.
- Deploy a web server using Docker.
- Generate HTTP traffic using `curl`.
- Analyze application logs.
- Identify HTTP errors through logs.
- Monitor Docker container resource consumption.
- Document cloud operations activities using Markdown and GitHub.
