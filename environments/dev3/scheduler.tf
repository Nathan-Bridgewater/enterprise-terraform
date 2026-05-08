
resource "google_cloud_scheduler_job" "job" {
  name     = "job-${var.environment}"
  region   = var.region
  schedule = "*/5 * * * *"
}
