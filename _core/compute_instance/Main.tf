module "compute_instance" {
  source              = "terraform-google-modules/terraform-google-vm/google//modules/compute_instance"
  instance_template   = module.instance_template.self_link

}