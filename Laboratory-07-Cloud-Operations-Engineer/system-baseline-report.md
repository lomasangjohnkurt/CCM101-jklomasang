# System Baseline Report

As a Cloud Operations Engineer, it is important to establish the health of the underlying Linux server before deploying and monitoring applications. The baseline information provides a reference point for evaluating the server's performance.

### Memory Check

The server's total available RAM was:

**Total RAM:** `1.9Gi`

Command executed:

```bash
free -h
```

### Disk Check

The total storage capacity of the root (`/`) file system was:

**Root Storage Capacity:** `19G`

Command executed:

```bash
df -h /
```

### CPU and Process Monitoring

The active processes and CPU load were monitored using:

```bash
top
```

### Why Disk Space Is Important

Checking disk space before a massive traffic surge is critical because insufficient storage can prevent applications from writing logs and temporary files, which may eventually cause services to fail.
