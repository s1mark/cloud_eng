module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 4.0"
  project_id    = "ekke-cloud"
  names         = ["H37N71"]
  project_roles = ["ekke-cloud=>roles/viewer"]
}