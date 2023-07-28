resource "aws_s3_bucket" "this" {
  bucket        = "${var.environment}-${var.bucket_name}-${var.aws_region}"

  tags = {
    Name    = "${var.environment}-${var.bucket_name}-${var.aws_region}"
    Purpose = var.bucket_description
  }
}

resource "aws_s3_bucket_logging" "this" {
  count = var.disable_access_logging ? 0 : 1

  bucket        = aws_s3_bucket.this.id
  target_bucket = data.aws_s3_bucket.s3_access_log_bucket
  target_prefix = "s3_access_logs/${aws_s3_bucket.this.bucket}/log-"
}