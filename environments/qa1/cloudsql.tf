
resource "google_sql_database_instance" "db" {
  name             = "sql-${var.environment}"
  database_version = "POSTGRES_15"
  region           = var.region
}
