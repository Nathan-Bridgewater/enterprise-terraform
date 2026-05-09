resource "google_storage_bucket" "tmp-data" {
      name                        = "enterprise-dev-3-tmp-data"
      location                    = "EU"
      uniform_bucket_level_access = true
      public_access_prevention    = "enforced"


  logging {
    log_bucket        = "enterprise-dev-3-access-logs"
    log_object_prefix = "dev-3/"
  }

      versioning {
        enabled = true
      }
    }
