locals {
  environment = "prod"
  region      = "us-east-1"
  
  tags = {
    Environment = local.environment
    ManagedBy   = "Terraform"
    Project     = "Landing Zone"
  }

  vpc_cidr = "10.0.0.0/16"
  
  accounts = {
    prod = {
      name  = "production"
      email = "aws-prod@yourdomain.com"
    }
    shared = {
      name  = "shared-services"
      email = "aws-shared@yourdomain.com"
    }
  }
}