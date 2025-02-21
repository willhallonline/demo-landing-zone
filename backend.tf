terraform {
    required_version = ">= 1.0.0"

    backend "s3" {
        bucket         = "your-terraform-state-bucket"
        key            = "path/to/your/terraform.tfstate"
        region         = "us-east-1"
        dynamodb_table = "your-dynamodb-table-for-state-lock"
    }

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}