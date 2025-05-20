# Terraform configuration for the new environment

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "new_environment_bucket" {
  bucket = "new-environment-bucket"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.new_environment_bucket.bucket
}