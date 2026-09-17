variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "terraform-aws-lab"
}

variable "expected_account_id" {
  description = "AWS account ID this configuration is only allowed to run against"
  type        = string
  default     = "866409326847"
}
