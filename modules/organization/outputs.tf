output "organizational_units" {
  description = "The list of created organizational units"
  value       = aws_organizations_organizational_unit.example.*.id
}

output "service_control_policies" {
  description = "The list of service control policies applied"
  value       = aws_organizations_policy.example.*.id
}