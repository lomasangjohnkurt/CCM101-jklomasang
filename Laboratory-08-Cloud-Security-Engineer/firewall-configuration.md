# Firewall Configuration

### 1. Allow SSH

```bash
sudo ufw allow ssh
```

This command allows incoming SSH connections so administrators can remotely manage the server.

### 2. Configure the Default Deny Policy

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

The first command blocks incoming traffic unless an explicit rule permits it. 
The second command allows outgoing connections from the server.

### 3. Enable UFW

```bash
sudo ufw enable
sudo ufw status verbose
```

These commands activate the firewall and display its status and default policies.

### 4. Allow the Web Application Port

```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

The first command allows incoming TCP traffic on port 8080 and the second displays the firewall rules with their numbers.

### 5. Verify the Web Application

```bash
curl http://localhost:8080
```

This command sends an HTTP request to the locally published web application and displays the server response.

### 6. SSH Security Warning

If `sudo ufw enable` is executed before `sudo ufw allow ssh`, incoming SSH connections may be blocked by the default deny policy.
