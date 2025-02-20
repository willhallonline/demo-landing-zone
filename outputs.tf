output "organization_id" {
  description = "The ID of the AWS Organization"
  value       = module.organization.organization_id
}

output "vpc_ids" {
  description = "Map of VPC IDs"
  value       = { for k, v in module.network : k => v.vpc_id }
}

output "account_ids" {
  description = "Map of account names to their IDs"
  value       = { for k, v in module.accounts : k => v.id }
}