resource "aws_s3_bucket" "mybucket" {
  bucket = "demo-class"
  acl    = "private"
  versioning {
    enabled = true
  }
  tags = {
    Name        = "my-tf-bucket"
    Environment = "prod"
  }
}