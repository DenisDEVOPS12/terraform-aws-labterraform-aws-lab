data "aws_caller_identity" "current" {}

check "correct_account" {
  assert {
    condition     = data.aws_caller_identity.current.account_id == var.expected_account_id
    error_message = "Refusing to run: credentials resolve to account ${data.aws_caller_identity.current.account_id}, expected the Security account ${var.expected_account_id}."
  }
}

module "notifications" {
  source = "../../modules/notifications"

  project_name = var.project_name
  environment  = "security"
  create_queue = false
}
