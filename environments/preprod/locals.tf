locals {
  environment = "preprod"
  region      = "us-east-1"
  
  tags = {
    Environment = local.environment
    ManagedBy   = "Terraform"
    Project     = "Landing Zone"
  }

  vpc_cidr = "10.2.0.0/16"  # Different CIDR from dev and prod
  
  accounts = {
    preprod = {
      name  = "pre-production"
      email = "aws-preprod@yourdomain.com"
    }
    staging = {
      name  = "staging"
      email = "aws-staging@yourdomain.com"
    }
  }
}