
resource "google_monitoring_alert_policy" "cpu" {
  display_name = "cpu-alert-${var.environment}"
}
