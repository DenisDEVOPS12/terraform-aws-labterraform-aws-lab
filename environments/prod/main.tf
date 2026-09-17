module "notifications" {
  source = "../../modules/notifications"

  project_name = var.project_name
  environment  = "prod"
  create_queue = false
}
