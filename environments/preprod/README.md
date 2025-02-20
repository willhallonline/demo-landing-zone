# Pre-Production Environment

This directory contains the Terraform configuration for the pre-production environment of our AWS Landing Zone.

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

- Environment used for final testing before production
- Mirrors production configuration
- State file is stored in S3 with encryption enabled
- State locking is implemented using DynamoDB