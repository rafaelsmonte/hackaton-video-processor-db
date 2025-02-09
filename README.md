# Video image processor database

This repository contains the IAC to create video image processor database using terraform.

1 database is created: - Nosql database table for the service (modules/video-apis-db) with one table to store the processing information such as, video path, video images path and processing status.

## Database Creation

```
Requirements:
  - Terraform CLI configured in your operating system and propper AWS credencials for terraform from cloud infrastructure
  - Make sure the VPC and public and private subnets are created and their ID's on AWS properly set on terraform env vars (values.tfvars)
```

1. Create database

```
terraform apply -var-file values.tfvars -target module.video-apis-db
```

### Documentation

- [Choosing NoSQL and DynamoDB for Video Data Storage](docs/database.md)
