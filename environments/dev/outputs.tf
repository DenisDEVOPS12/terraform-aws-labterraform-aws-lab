output "sns_topic_arn" {
  description = "ARN of the SNS topic"
  value       = module.notifications.sns_topic_arn
}

output "sqs_queue_url" {
  description = "URL of the SQS queue"
  value       = module.notifications.sqs_queue_url
}
