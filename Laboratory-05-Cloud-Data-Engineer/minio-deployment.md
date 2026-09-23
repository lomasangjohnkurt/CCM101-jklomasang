# MinIO Deployment Documentation

## Docker Deployment Command

The following Docker command was used to download and start the MinIO server:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server -e "MINIO_ROOT_USER=cloudadmin" -e "MINIO_ROOT_PASSWORD=CloudNova2026!" minio/minio server /data --console-address ":9001"
```

## Port Configuration

Two ports were mapped during deployment:

| Port     | Purpose                              |
| -------- | ------------------------------------ |
| **9000** | MinIO API and object storage service |
| **9001** | MinIO Web Console                    |

The web-based MinIO management console was accessed using **port 9001** through the KillerCoda port forwarding feature.

## Login Credentials

The Docker command defined the following administrator credentials:

```text
Username: cloudadmin
Password: CloudNova2026!
```

## Environment Variables

The `-e` flags in the Docker command are used to define environment variables inside the MinIO container.

The following environment variables were used:

```text
MINIO_ROOT_USER=cloudadmin
MINIO_ROOT_PASSWORD=CloudNova2026!
```

`MINIO_ROOT_USER` defines the username for the MinIO administrator account, while `MINIO_ROOT_PASSWORD` defines the password for that account. These variables allow the administrator to configure the initial login credentials when the MinIO container starts.

## Bucket Created

The storage bucket created during the activity was:

```text
client-photos
```

The bucket was used to store a test file representing a user-uploaded photo.

## Deployment Verification

The MinIO server was verified using:

```bash
docker ps
```

The command confirmed that the `minio-server` container was running.

The MinIO Web Console was then accessed through port `9001`, where the `client-photos` bucket was created and a test file was uploaded successfully.
