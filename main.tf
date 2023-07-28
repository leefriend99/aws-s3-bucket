resource "aws_s3_bucket" "this" {
  bucket        = var.bucket_name

  tags = {
    Name    = "${var.environment}-${var.bucket_name}-${var.aws_region}"
    Purpose = var.bucket_description
  }
}