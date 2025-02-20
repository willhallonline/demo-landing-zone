terraform {
  required_version = ">= 1.0.0"
    bucket         = "your-terraform-state-bucket"
  required_providers {landing-zone/terraform.tfstate"
    aws = {        = "us-east-1"
      source  = "hashicorp/aws"-state-lock"
      version = "~> 5.0"e
    }
  }}