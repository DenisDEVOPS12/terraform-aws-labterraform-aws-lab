variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g. dev, prod)"
  type        = string
}

variable "create_queue" {
  description = "Whether to create an SQS queue subscribed to the SNS topic"
  type        = bool
  default     = false
}
