output "sns_topic_arn" {
  description = "ARN of the SNS topic"
  value       = module.notifications.sns_topic_arn
}

output "sqs_queue_url" {
  description = "URL of the SQS queue"
  value       = module.notifications.sqs_queue_url
}

output "dev_alerts_topic_arn" {
  description = "ARN of the dev-only alerts SNS topic"
  value       = aws_sns_topic.dev_alerts.arn
}
