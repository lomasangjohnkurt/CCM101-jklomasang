
##Application Logging

The application logs were retrieved using the following command:

```bash
docker logs client-website
```

### 404 Error Log

curl http://localhost:8080/hidden-admin-page


### Importance of Application Logs

Application logs are vital for troubleshooting because they provide detailed records of requests, errors, and other events occurring inside an application. They allow Cloud Operations Engineers to identify problems and determine what happened without having to guess the cause of an issue.

---

## Checkpoint 5 – Real-Time Container Metrics

Docker provides a built-in monitoring command that displays the resource consumption of running containers.

Command executed:

```bash
docker stats
```

The `client-website` container was monitored for its CPU usage, memory usage, network activity and other resource information.

### Container Metrics

**Container Name:** `client-website`

**CPU Usage:** `0.00%`

**Memory Usage:** `2.742MiB`
