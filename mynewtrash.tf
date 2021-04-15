resource "aws_s3_bucket" "new-trash-bucket" {
  # bucket is public
  # bucket is not encrypted
  # dd does not have access logsasdf
  # bucket does not have 
  bucket        = "new-trash-bucket"
  acl           = "private"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
  }
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
  }
}
