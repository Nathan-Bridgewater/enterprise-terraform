
resource "google_secret_manager_secret" "secret" {
  secret_id = "secret-${var.environment}"

  replication {
    auto {}
  }
}
