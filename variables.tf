variable "aws_region" {
  description = "AWS region where project will be placed"
  type        = string
}
variable "bucket_name" {
  description = "AWS bucket name"
  type        = string
}
variable "force_destroy" {
  description = "Force destroy of s3 bucket"
  type        = bool
  default     = false
}
variable "versioning" {
  description = "S3 bucket enable versioning"
  type        = string
  default     = "Enabled"
}
variable "tags" {
  description = "AWS S3 bucket and commont resources tags"
  type        = map(string)
}