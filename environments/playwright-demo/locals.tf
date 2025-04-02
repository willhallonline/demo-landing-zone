locals {
  environment = "playwright-demo"
  region      = "us-east-1"
  
  tags = {
    Environment = local.environment
    ManagedBy   = "Terraform"
    Project     = "Landing Zone"
  }

  vpc_cidr = "10.2.0.0/16"  # Different CIDR range from dev
  
  accounts = {
    demo = {
      name  = "playwright-demo"
      email = "aws-playwright-demo@yourdomain.com"
    }
  }
}