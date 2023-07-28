# Get the common s3 access log bucket
data "aws_s3_bucket" "s3_access_log_bucket" {
  bucket = "${var.environment}-common-s3-access-logs-${var.aws_region}"
}
