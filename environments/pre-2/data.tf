resource "google_storage_bucket" "settlement-reports" {
      name                        = "enterprise-pre-2-settlement-reports"
      location                    = "EU"
      uniform_bucket_level_access = true
      public_access_prevention    = "enforced"


  logging {
    log_bucket        = "enterprise-pre-2-access-logs"
    log_object_prefix = "pre-2/"
  }

      versioning {
        enabled = true
      }
    }
