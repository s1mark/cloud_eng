module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 1.0"
  project_id    = "ekke-cloud"
  names         = ["JBRHB9"]
  project_roles = ["project_id=>roles/viewer"]
}