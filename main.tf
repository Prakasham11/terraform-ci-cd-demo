resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-ci-cd-demo-bucket-123456"
  force_destroy = true
  tags = {
    Name = "CI/CD Demo Bucket"
  }
}

resource "aws_s3_bucket_acl" "demo_bucket_acl" {
  bucket = aws_s3_bucket.demo_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket = aws_s3_bucket.demo_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
