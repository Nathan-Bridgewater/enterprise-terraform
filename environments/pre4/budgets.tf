
resource "google_billing_budget" "budget" {
  billing_account = "000000-000000-000000"
  display_name    = "budget-${var.environment}"
}
