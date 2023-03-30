module "JBRHB9" {
  source = "../../JBRHB9/Modules/serviceAccount"
}

module "VURYGE" {
  source = "../../VURYGE/modules/service-account"
}

module "HPGJ04" {
  source = "../../HPGJ04/modules/service-account"
  project_id = "ekke-cloud"
}
