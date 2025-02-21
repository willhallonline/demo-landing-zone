module "organization" {
  source = "terraform-aws-modules/organizations/aws"

  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "sso.amazonaws.com"
  ]
  enabled_policy_types = ["SERVICE_CONTROL_POLICY", "TAG_POLICY"]
}

module "accounts" {
  source     = "terraform-aws-modules/organizations/aws//modules/accounts"
  depends_on = [module.organization]

  for_each = local.accounts

  name      = each.value.name
  email     = each.value.email
  parent_id = module.organization.organizational_units[each.key].id
}
