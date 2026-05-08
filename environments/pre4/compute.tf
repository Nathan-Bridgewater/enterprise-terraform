
resource "google_compute_instance" "vm" {
  name         = "vm-${var.environment}"
  machine_type = "e2-medium"
  zone         = "europe-west2-a"
}
