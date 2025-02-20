variable "accounts" {
  description = "Map of AWS accounts to be created"
  type = map(object({
    name  = string
    email = string
  }))
}

variable "role_name" {
  description = "Name of the IAM role to be created in the new account"
  type        = string
  default     = "OrganizationAccountAccessRole"
}

variable "parent_id" {
  description = "Parent organizational unit ID or Root ID for the account"
  type        = string
  default     = null
}