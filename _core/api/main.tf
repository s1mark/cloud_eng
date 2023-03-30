module "project-services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "~> 14.2"
  project_id = "ekke-cloud"
  activate_apis = ["compute.googleapis.com"]
}