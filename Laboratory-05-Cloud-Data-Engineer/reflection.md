# Reflection

Today laboratory activity it helped me to understand why Object Storage is widely used for applications that need to manage large amounts of unstructured data. Object Storage is better suited for storing millions of photos because it is designed to store files as objects with metadata and unique identifiers. Unlike traditional block storage, which is organized into fixed-size blocks and is commonly used for operating systems and databases, Object Storage can efficiently manage large collections of images, videos, documents, and backups.

Docker also made deploying the MinIO storage server easier. Instead of manually installing and configuring every component of the storage system, I was able to use a Docker command to download the MinIO image and start the server in a container. The port mappings and environment variables also allowed me to configure the service and administrator credentials during deployment. This made the deployment process faster and more consistent.

A bucket in cloud storage is a logical container used to organize and store objects. In this activity, I created a bucket named `client-photos`, which served as the storage location for the test file. The bucket provided a simple way to organize the photos that would be uploaded by users of the client's application.

Large enterprise companies can use several methods to help prevent data loss when physical servers fail. These can include replication, redundancy, backups, multiple storage servers, and geographically distributed storage. By keeping multiple copies of important data, organizations can recover information when hardware failures or other problems occur.

this laboratory activity I used commands such as `docker run`, `docker ps`, and `docker logs` to deploy and verify the MinIO server and Compared with my earlier cloud laboratory activities 
