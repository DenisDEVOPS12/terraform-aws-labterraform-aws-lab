module "notifications" {
  source = "../../modules/notifications"

  project_name = var.project_name
  environment  = "dev"
  create_queue = true
}
