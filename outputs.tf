output "s3_bucket_name" {
  description = "Name of the demo S3 bucket"
  value       = aws_s3_bucket.demo.id
}

output "s3_bucket_arn" {
  description = "ARN of the demo S3 bucket"
  value       = aws_s3_bucket.demo.arn
}

output "iam_user_name" {
  description = "Name of the demo IAM user"
  value       = aws_iam_user.demo_user.name
}

output "iam_user_arn" {
  description = "ARN of the demo IAM user"
  value       = aws_iam_user.demo_user.arn
}

output "aws_account_id" {
  description = "AWS Account ID"
  value       = data.aws_caller_identity.current.account_id
}

output "aws_region" {
  description = "AWS Region"
  value       = data.aws_region.current.name
}
