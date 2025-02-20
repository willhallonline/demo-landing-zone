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

variable "aws_service_access_principals" {
  description = "List of AWS service principal names for which you want to enable integration"
  type        = list(string)
  default = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "sso.amazonaws.com"
  ]
}

variable "enabled_policy_types" {
  description = "List of Organizations policy types to enable"
  type        = list(string)
  default = [
    "SERVICE_CONTROL_POLICY",
    "TAG_POLICY"
  ]
}