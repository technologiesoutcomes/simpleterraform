output "simpleS3" {
  description = "simple bucket id"
  value       = aws_s3_bucket.simples3.id
}

output "simpleS3_arn" {
  description = "simple bucket arn"
  value       = aws_s3_bucket.simples3.arn
}

output "simpleS3_bucket_domain_name" {
  description = "simple bucket bucket_domain_name"
  value       = aws_s3_bucket.simples3.bucket_domain_name
}

## =======================================================================================

output "simpleS3-module-id" {
  description = "simple bucket module S3 ID"
  value       = module.s3_bucket.s3_bucket_id
}

output "simpleS3-module-arn" {
  description = "simple bucket module S3 arn"
  value       = module.s3_bucket.s3_bucket_arn
}
