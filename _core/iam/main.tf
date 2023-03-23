resource "google_project_iam_member" "project" {
  for_each = var.iam
  
  project = "ekke-cloud"
  role    = each.value
  member  = "user:${each.key}"
}
