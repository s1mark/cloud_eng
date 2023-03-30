module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 4.0"
  project_id    = "ekke-cloud"
  names         = ["HQRBVO"]
  project_roles = ["ekke-cloud=>roles/viewer"]
}