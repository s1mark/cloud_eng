module "api" {
  source = "../api"
}

module "instance_template" {
  source = "../instance_template"
  depends_on = [module.api]
}

module "compute_instance" {
  source              = "git::https://github.com/terraform-google-modules/terraform-google-vm//modules/compute_instance"
  instance_template   = module.instance_template.self_link
  zone = "us-west1-a"
}