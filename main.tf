provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-ci-cd-demo-bucket-123456"
  acl    = "private"
}