resource "aws_s3_bucket" "daasdfta" {
  # bucket is public
  # bucket is not encrypted
  # dd does not have access logsasdf
  # bucket does not have 
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "public-read"
  server_side_encryption = "aws:kms"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
  }
}


resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logsasdf
  # bucket does not have versioning asdfasasdfasdfasdf
  bucket        = "new-bucket"
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
  }
}



resource "aws_s3_bucket" "daasdfta" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logsasdf
  # bucket does not have versioning asdfasasdfasdfasdf
  bucket        = "new--asdf-bucket"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
  }
}
