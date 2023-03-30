
variable "service_account" {
  type = object({
    email  = string
    scopes = set(string)
  })
}

module "instance_template" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-vm/modules/instance_template"
  project_id    = "ekke-cloud"
  disk_size_gb = "20"
  machine_type = "f1-micro"
  service_account              = var.service_account
}