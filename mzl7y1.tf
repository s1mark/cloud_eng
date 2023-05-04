module "mzl7y1-pipeline3123123123123" {
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
