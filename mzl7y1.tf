module "mzl7y1-pipeline" {
  source = "./mzl7y1"
}
  
provider "google" {
  credentials = jsondecode(var.gcp_credentials)
  project     = "ekke-cloud"
}

data "google_project" "project" {
}

output "project_number" {
  value = data.google_project.project.number
}
