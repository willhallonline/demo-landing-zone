provider "aws" {
  region = var.region
  
  # Assume role for organization management
  assume_role {
    role_arn = "arn:aws:iam::${var.management_account_id}:role/OrganizationAccountAccessRole"
  }
}