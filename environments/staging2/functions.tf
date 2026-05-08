
resource "google_cloudfunctions2_function" "function" {
  name     = "fn-${var.environment}"
  location = var.region
}
