variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "management_account_id" {
  description = "AWS Organizations management account ID"
  type        = string
}