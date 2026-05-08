
resource "google_container_cluster" "gke" {
  name     = "gke-${var.environment}"
  location = var.region
}
