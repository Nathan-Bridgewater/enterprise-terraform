resource "google_storage_bucket" "artifacts" {
      name                        = "enterprise-dev-1-artifacts"
      location                    = "EU"
      uniform_bucket_level_access = true
      # public_access_prevention    = "enforced"


  logging {
    log_bucket        = "enterprise-dev-1-access-logs"
    log_object_prefix = "dev-1/"
  }

      versioning {
        enabled = true
      }
    }
