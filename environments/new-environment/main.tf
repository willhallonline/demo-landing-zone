provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "new_environment_bucket" {
  bucket = "new-environment-bucket"
  acl    = "private"
}