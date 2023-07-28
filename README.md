# AWS S3 Bucket Terraform Module
Module to create S3 buckets to Collinson and Security standards and aligning with Security Hubb guidelines.

Features:
- access logging
- versioning (uses common S3 Access Log bucket)
- lifecycle rules
- server-side encryption

Standards:
- bucket names will be <environment>-bucket_name-<aws_region>
    i.e.: test-my-bucket-eu-west-1
- tags will be automatically added for, environment, project, product, name, description