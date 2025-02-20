provider "aws" {
    region = var.region
}

resource "aws_organizations_organization" "this" {
    aws_service_access_principals = var.aws_service_access_principals
    enabled_policy_types          = var.enabled_policy_types
}

resource "aws_organizations_account" "account" {
    for_each = var.accounts

    name      = each.value.name
    email     = each.value.email
    role_name = each.value.role_name
}

variable "region" {
    description = "The AWS region to create resources in."
    type        = string
}

variable "aws_service_access_principals" {
    description = "List of AWS service access principals to enable in the organization."
    type        = list(string)
}

variable "enabled_policy_types" {
    description = "List of policy types to enable in the organization."
    type        = list(string)
}

variable "accounts" {
    description = "Map of accounts to create in the organization."
    type = map(object({
        name      = string
        email     = string
        role_name = string
    }))
}

module "organization" {
  source  = "terraform-aws-modules/organizations/aws"
  version = "~> 1.0"

  aws_service_access_principals = var.aws_service_access_principals
  enabled_policy_types         = var.enabled_policy_types

  organizational_units = {
    prod = {
      name = "Production"
    }
    nonprod = {
      name = "Non-Production"
    }
    security = {
      name = "Security"
    }
  }
}