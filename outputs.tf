output "aws_s3_bucket_bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
}
output "aws_bucket_name" {
  description = "S3 Bucket name"
  value       = aws_s3_bucket.this.bucket
}
output "aws_bucket_id" {
  value = aws_s3_bucket.this.id
}
output "aws_bucket_arn" {
  description = "S3 Bucket arn"
  value       = aws_s3_bucket.this.arn
}
output "aws_bucket_region" {
  description = "S3 Bucket region"
  value       = var.aws_region
}
output "aws_bucket_versioning_enabled" {
  description = "S3 Bucket versioning enabled"
  value       = aws_s3_bucket_versioning.this.versioning_configuration[0].status == "Enabled"
}
output "aws_bucket_object_lock_enabled" {
  description = "S3 Bucket object lock enabled"
  value       = aws_s3_bucket.this.object_lock_enabled
}
