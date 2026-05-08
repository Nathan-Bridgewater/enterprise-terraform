
resource "google_service_account" "app" {
  account_id   = "app-${var.environment}"
  display_name = "App Service Account"
}
