
variable "environment" {
  description = "Environment for resource deployment i.e., test, uat, prod"
}

# variable "product" {
#   description = "Product name"
#   type        = string
# }

# variable "project" {
#   description = "Project or common name used throughout for naming resources"
#   type        = string
# }

# variable "base_tags" {
#   description = "base tags to apply"
#   type        = any
# }

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "bucket_name" {
  description = "The namepart for the bucket, will be prefixed and suffixed to align to naming standards."
  type        = string
}

variable "bucket_description" {
  description = "Meaningful use of the bucket, will be added to the tags."
  type        = string
}

# Defaults to align to Collinson / security / best practise
variable "disable_access_logging" {
  description = "Access logging is required and only disabled with approval."
  type        = bool
  default     = false
}

variable "disable_versioning" {
  description = "Versioning is required and only disabled with approval."
  type        = bool
  default     = false
}

# variable "client" {
#   description = "Specify the client accessing this resource."
#   type        = string
# }
