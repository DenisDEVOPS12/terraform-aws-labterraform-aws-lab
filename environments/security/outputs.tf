output "sns_topic_arn" {
  description = "ARN of the SNS topic"
  value       = module.notifications.sns_topic_arn
}

output "vasia_pupkin_user_arn" {
  description = "ARN of the vasia_pupkin IAM user"
  value       = module.vasia_pupkin.user_arn
}
