# Checkpoint 2 – Virtualization vs. Containers

## Virtual Machines vs. Containers

Virtual Machines (VMs) and Containers are both technologies used to run applications in isolated environments. However they have different architectures and resource requirements.

| Category                | Virtual Machines (VMs)                                                                        | Containers                                                                                                    |
| ----------------------- | --------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| **Architecture**        | Each VM includes a complete Guest Operating System running on virtualized hardware.           | Containers share the Host Operating System kernel while keeping applications and their dependencies isolated. |
| **Boot Time**           | Usually takes minutes because the entire Guest OS needs to start.                             | Usually takes seconds or less because only the application and its required components need to start.         |
| **Resource Efficiency** | Heavy and requires more RAM and storage because every VM has its own Guest OS.                | Lightweight and uses fewer resources because containers share the Host OS kernel.                             |
| **Isolation Level**     | Provides strong isolation through hardware virtualization and separate Guest OS environments. | Provides process-level isolation between applications running on the same Host OS.                            |

## Summary

Containers can help reduce the time and resources needed to deploy web applications compared with traditional Virtual Machines. Unlike VMs, containers do not require a complete Guest Operating System for every application which makes them more lightweight and efficient. Containers can also be started quickly allowing developers and IT teams to deploy applications faster.
