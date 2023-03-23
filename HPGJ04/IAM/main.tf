resource "google_project_iam_member" "project"{
    project = "ekke-cloud"
    role = "roles/viewer"

    members = [
        "user:oleg.dragoi228@gmail.com"
    ]
}