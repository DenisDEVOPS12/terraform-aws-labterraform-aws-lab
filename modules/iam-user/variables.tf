variable "user_name" {
  description = "Name of the IAM user"
  type        = string
}

variable "path" {
  description = "IAM path under which the user is created"
  type        = string
  default     = "/"
}

variable "policy_arns" {
  description = "Managed policy ARNs to attach directly to the user"
  type        = list(string)
  default     = []
}
