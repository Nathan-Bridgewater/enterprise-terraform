
resource "google_bigquery_dataset" "dataset" {
  dataset_id = "analytics_${var.environment}"
  location   = "EU"
}
