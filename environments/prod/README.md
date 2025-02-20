# Production Environment

This directory contains the Terraform configuration for the production environment of our AWS Landing Zone.

## Prerequisites

- Terraform >= 1.0.0
- AWS CLI configured with appropriate credentials
- S3 bucket for Terraform state
- DynamoDB table for state locking

## Usage

```bash
# Initialize Terraform
terraform init

# Plan changes
terraform plan -out=tfplan

# Apply changes
terraform apply tfplan
```

## Important Notes

- All changes should go through CI/CD pipeline
- Manual changes require approval
- State file is stored in S3 with encryption enabled
- State locking is implemented using DynamoDB