
resource "google_logging_project_sink" "sink" {
  name        = "sink-${var.environment}"
  destination = "storage.googleapis.com/log-bucket"
}
