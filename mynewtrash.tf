resource "aws_s3_bucket" "new-trash-bucket" {
  # bucket is public
  # bucket is not encrypted
  # dd does not have access logsasdf
  # bucket does not have 
  bucket        = "new-trash-bucket"
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
  }
}
