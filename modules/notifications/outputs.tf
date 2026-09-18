output "sns_topic_arn" {
  description = "ARN of the SNS topic"
  value       = aws_sns_topic.this.arn
}

output "sns_topic_name" {
  description = "Name of the SNS topic"
  value       = aws_sns_topic.this.name
}

output "sqs_queue_url" {
  description = "URL of the SQS queue (empty string when not created)"
  value       = var.create_queue ? aws_sqs_queue.this[0].id : ""
}

output "sqs_queue_arn" {
  description = "ARN of the SQS queue (empty string when not created)"
  value       = var.create_queue ? aws_sqs_queue.this[0].arn : ""
}
