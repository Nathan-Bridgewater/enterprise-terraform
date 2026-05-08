
resource "google_dns_managed_zone" "zone" {
  name     = "zone-${var.environment}"
  dns_name = "${var.environment}.corp.internal."
}
