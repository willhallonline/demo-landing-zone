locals {
  # Environment settings
  environments = ["dev", "preprod", "prod"]
  region       = "us-east-1"

  # Organization structure
  organizational_units = {
    prod = {
      name = "Production"
      accounts = {
        prod = {
          name  = "production"
          email = "aws-prod@yourdomain.com"
        }
      }
    }
    nonprod = {
      name = "Non-Production"
      accounts = {
        dev = {
          name  = "development"
          email = "aws-dev@yourdomain.com"
        }
        preprod = {
          name  = "pre-production"
          email = "aws-preprod@yourdomain.com"
        }
      }
    }
    security = {
      name = "Security"
      accounts = {
        security = {
          name  = "security"
          email = "aws-security@yourdomain.com"
        }
      }
    }
  }

  # VPC configurations
  vpcs = {
    prod = {
      cidr            = "10.0.0.0/16"
      azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
      private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
      public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
    }
    preprod = {
      cidr            = "10.1.0.0/16"
      azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
      private_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
      public_subnets  = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]
    }
    dev = {
      cidr            = "10.2.0.0/16"
      azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
      private_subnets = ["10.2.1.0/24", "10.2.2.0/24", "10.2.3.0/24"]
      public_subnets  = ["10.2.101.0/24", "10.2.102.0/24", "10.2.103.0/24"]
    }
  }

  # Common tags
  common_tags = {
    Terraform   = "true"
    Project     = "Landing Zone"
    ManagedBy   = "Terraform"
  }

  # Service principals needed for organization
  service_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "sso.amazonaws.com"
  ]

  # Policy types to enable
  policy_types = [
    "SERVICE_CONTROL_POLICY",
    "TAG_POLICY"
  ]
}