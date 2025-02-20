# filepath: /demo-landing-zone/demo-landing-zone/modules/accounts/main.tf

resource "aws_organizations_account" "new_account" {
  for_each = var.accounts

  name      = each.value.name
  email     = each.value.email
  role_name = var.role_name
}

resource "aws_iam_role" "account_role" {
  for_each = var.accounts

  name               = "${each.value.name}-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["organizations.amazonaws.com"]
    }
  }
}

module "organization_accounts" {
  source  = "terraform-aws-modules/organizations/aws//modules/accounts"
  version = "~> 1.0"

  for_each = var.accounts

  name      = each.value.name
  email     = each.value.email
  parent_id = var.parent_id

  close_on_deletion = false
  create_iam_role   = true
  role_name         = var.role_name

  tags = {
    Environment = each.key
    Managed     = "Terraform"
  }
}