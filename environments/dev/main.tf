module "notifications" {
  source = "../../modules/notifications"

  project_name = var.project_name
  environment  = "dev"
  create_queue = true
}

# -----------------------------------------------------
# Dev-only SNS topic — not part of the reusable module,
# so it never gets created in prod.
# -----------------------------------------------------
resource "aws_sns_topic" "dev_alerts" {
  name = "${var.project_name}-dev-alerts"
}
