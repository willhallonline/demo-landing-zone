variable "organization_name" {
  description = "The name of the AWS Organization"
  type        = string
}

variable "organizational_units" {
  description = "A map of organizational units to create"
  type        = map(string)
}

variable "service_control_policies" {
  description = "A list of service control policies to attach to the organization"
  type        = list(string)
}