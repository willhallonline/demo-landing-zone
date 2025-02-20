locals {
  environment = "dev"
  region      = "us-east-1"
  
  tags = {
    Environment = local.environment
    ManagedBy   = "Terraform"
    Project     = "Landing Zone"
  }

  vpc_cidr = "10.1.0.0/16"  # Different CIDR range from prod
  
  accounts = {
    dev = {
      name  = "development"
      email = "aws-dev@yourdomain.com"
    }
    sandbox = {
      name  = "sandbox"
      email = "aws-sandbox@yourdomain.com"
    }
  }
}