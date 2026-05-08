
resource "google_kms_key_ring" "ring" {
  name     = "ring-${var.environment}"
  location = var.region
}
