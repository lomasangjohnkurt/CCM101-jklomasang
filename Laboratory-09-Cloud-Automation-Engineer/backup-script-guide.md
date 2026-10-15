# Backup Script Guide

## 2. Complete Bash Script

Filename: `backup.sh`

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# Compress the source directory into a tarball (.tar.gz)
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Backup completed successfully at $TIMESTAMP!"
```

## 3. Explanation

- `#!/bin/bash` specifies the Bash interpreter.
- `SOURCE_DIR="app-data"` defines the directory containing the application data.
- `BACKUP_DIR="backups"` defines the destination directory for backup files.
- `TIMESTAMP=$(date +"%Y%m%d_%H%M%S")` generates a date and time string for the backup filename.
- `mkdir -p "$BACKUP_DIR"` creates the backup directory if it does not exist.
- `tar -czf` compresses the source directory into a gzip-compressed archive.
- `echo` displays messages in the terminal.
- `chmod +x backup.sh` grants executable permission to the script so it can be run as a program.

## 4. Testing and Verification

The script was tested in the KillerCoda Ubuntu Playground. The command `./backup.sh` was used to execute it, while `ls -l backups/` was used to check the generated archive. The command `tar -tzf backups/backup_*.tar.gz` can also verify the contents of the compressed backup.

## 5. Cron Job Configuration

The cron expression used is:

```cron
0 2 * * * /root/backup.sh
```

This schedule runs the script every day at 2:00 AM, provided the absolute path and permissions are correct.
