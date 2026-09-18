output "sns_topic_arn" {
  description = "ARN of the SNS topic"
  value       = module.notifications.sns_topic_arn
}
