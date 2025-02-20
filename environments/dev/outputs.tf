output "vpc_id" {
  description = "The ID of the VPC created in the development environment."
  value       = module.network.vpc_id
}

output "subnet_ids" {
  description = "The IDs of the subnets created in the development environment."
  value       = module.network.subnet_ids
}

output "iam_role_arn" {
  description = "The ARN of the IAM role created for the development environment."
  value       = module.accounts.iam_role_arn
}