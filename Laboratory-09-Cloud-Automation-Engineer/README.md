## Mission Overview

Congratulations! Your ability to secure cloud environments has proven you are ready for the highest 
level of operations. You have been promoted to the Cloud Automation and DevOps Team at CloudNova 
Technologies. 
Up until now, you have been acting as a traditional systems administrator—typing commands manually 
one by one. In large enterprise environments scaling to thousands of servers, manual administration is too slow 
and highly prone to human error. To survive at scale, you must learn to automate. 
Using the KillerCoda Playground, you will step into the role of a Cloud Automation Engineer. You will 
learn the basics of Bash shell scripting, create an automated backup routine, assign executable permissions, and 
configure the Linux Cron scheduler to run your code autonomously. 
Remember: If you have to do a task more than twice in the cloud, you should automate it.

## Objectives
At the end of this laboratory activity, you should be able to:  

- Understand the fundamental syntax of a Bash shell script, including variables and basic commands. 
- Use a command-line text editor (nano) to write and save executable scripts. 
- Modify Linux file permissions using the chmod command. 
- Understand task scheduling and the syntax of a Linux crontab. 
- Document automation code and Cron job configurations using Markdown. 
- Complete the final chapter of your GitHub Cloud Computing Portfolio.
  
## Commands Executed

| Command | Purpose |
|---|---|
| `mkdir -p app-data` | Creates the application data directory. |
| `echo "This is critical client data." > app-data/data.txt` | Creates a sample data file. |
| `nano backup.sh` | Creates and edits the backup script. |
| `./backup.sh` | Executes the backup script. |
| `chmod +x backup.sh` | Grants executable permission. |
| `ls -l backups/` | Lists generated backup files. |
| `tar -tzf backups/backup_*.tar.gz` | Lists archive contents for verification. |
| `crontab -l` | Displays configured cron jobs. |
| `env EDITOR=nano crontab -e` | Opens the cron table for editing. |

## Skills Learned

- Bash shell scripting and variable usage.
- Linux file permissions and script execution.
- File compression and backup verification.
- Automated task scheduling with cron.
- Markdown technical documentation.
- Basic cloud automation and operational reliability.
