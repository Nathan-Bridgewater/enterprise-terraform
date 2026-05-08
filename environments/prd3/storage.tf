
resource "google_storage_bucket" "bucket" {
  name     = "storage-${var.environment}"
  location = "EU"
}
