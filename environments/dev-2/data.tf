resource "google_storage_bucket" "uploads" {
      name                        = "enterprise-dev-2-uploads"
      location                    = "EU"
      uniform_bucket_level_access = true
      public_access_prevention    = "enforced"


  logging {
    log_bucket        = "enterprise-dev-2-access-logs"
    log_object_prefix = "dev-2/"
  }

      versioning {
        enabled = false
      }
    }
