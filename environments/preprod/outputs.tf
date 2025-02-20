output "vpc_id" {
  description = "The ID of the pre-production VPC"
  value       = module.network.vpc_id
}

output "account_ids" {
  description = "Map of account names to their AWS account IDs"
  value       = module.accounts.accounts
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = module.network.private_subnet_ids
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.network.public_subnet_ids
}

output "organization_root_id" {
  description = "ID of the AWS Organization root"
  value       = module.organization.organization_root_id
}

output "organizational_units" {
  description = "Map of OU names to their IDs"
  value       = module.organization.organizational_units
}

output "environment" {
  description = "Current environment name"
  value       = "preprod"
}