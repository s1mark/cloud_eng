module "service_accounts" {
  source        = "github.com/terraform-google-modules/terraform-google-service-accounts"
  project_id    = var.project_id
  names         = ["HPGJ04"]
  project_roles = ["${var.project_id}=>roles/viewer"]
  description   = "Viewer account"
}