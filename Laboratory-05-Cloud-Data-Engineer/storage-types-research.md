# Storage Types Research

## Comparison of Cloud Storage Types

| Storage Type       | Description                                                                                                                                                  | Primary Use Case                                                                                                  | Cloud Provider Example |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **Block Storage**  | Stores data in fixed-size blocks that can be individually managed. It behaves similarly to a traditional hard drive and can be attached to virtual machines. | Best for operating systems, databases, and applications that require fast and consistent disk access.             | AWS EBS                |
| **File Storage**   | Stores data in a hierarchical folder and file structure.                                                                                                     | Best for shared folders, file servers, content management systems, and applications requiring shared file access. | AWS EFS                |
| **Object Storage** | Stores data as objects together with metadata and a unique identifier. It is designed to handle large amounts of unstructured data.                          | Best for images, videos, backups, documents, logs, and other large collections of unstructured data.              | AWS S3                 |

## Why Object Storage is Suitable for User-Uploaded Images

Object Storage is a suitable choice for the client's photo sharing application because it is designed to store large amounts of unstructured data such as images and videos and also can organize millions of files using buckets and object identifiers while providing scalable access to stored data.
