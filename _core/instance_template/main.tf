
variable "service_account" {
  type = object({
    email  = string
    scopes = set(string)
  })
}

variable "access_config" {
  description = "Access configurations, i.e. IPs via which the VM instance can be accessed via the Internet."
  type = list(object({
    nat_ip       = string
    network_tier = string
  }))
  default = []
}

module "instance_template" {
  source = "git::https://github.com/terraform-google-modules/terraform-google-vm/modules/instance_template"
  project_id    = "ekke-cloud"
  disk_size_gb = "20"
  machine_type = "f1-micro"
  stack_type                   = "IPV4_ONLY"
  service_account              = var.service_account
  name_prefix                  = "simple"
  access_config                = [local.access_config]
  enable_nested_virtualization = false
  threads_per_core             = null
}