resource "google_storage_bucket" "reports" {
      name                        = "enterprise-prd-2-reports"
      location                    = "EU"
      uniform_bucket_level_access = true
      public_access_prevention    = "enforced"


  logging {
    log_bucket        = "enterprise-prd-2-access-logs"
    log_object_prefix = "prd-2/"
  }

      versioning {
        enabled = true
      }
    }
    


resource "google_sql_database_instance" "reporting" {
  name             = "prd-2-reporting-db"
  region           = var.region
  database_version = "POSTGRES_16"

  settings {
    tier              = "db-custom-4-15360"
    availability_type = "REGIONAL"
    disk_autoresize   = true

    backup_configuration {
      enabled                        = true
      point_in_time_recovery_enabled = true
    }

    ip_configuration {
      ipv4_enabled    = false
      private_network = google_compute_network.app.id
      require_ssl     = true
    }

    database_flags {
      name  = "log_connections"
      value = "on"
    }

    database_flags {
      name  = "log_disconnections"
      value = "on"
    }

    database_flags {
      name  = "log_checkpoints"
      value = "on"
    }

    database_flags {
      name  = "log_lock_waits"
      value = "on"
    }

    database_flags {
      name  = "log_hostname"
      value = "on"
    }

    database_flags {
      name  = "log_min_messages"
      value = "error"
    }

    database_flags {
      name  = "log_min_error_statement"
      value = "error"
    }

    database_flags {
      name  = "log_statement"
      value = "ddl"
    }

    database_flags {
      name  = "cloudsql.enable_pgaudit"
      value = "on"
    }
  }

  deletion_protection = true
}
