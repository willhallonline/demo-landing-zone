locals {
  environment = "testing2"
  region      = "us-east-1"
  
  tags = {
    Environment = local.environment
    ManagedBy   = "Terraform"
    Project     = "Landing Zone"
  }

  vpc_cidr = "10.2.0.0/16"  # Different CIDR range from other environments
  
  accounts = {
    testing2 = {
      name  = "testing2"
      email = "aws-testing2@yourdomain.com"
    }
  }
}