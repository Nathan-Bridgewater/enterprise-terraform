
resource "google_project_iam_member" "viewer" {
  role   = "roles/viewer"
  member = "serviceAccount:test@example.com"
}
