resource "google_storage_bucket" "load-test-results" {
      name                        = "enterprise-qa-3-load-test-results"
      location                    = "EU"
      uniform_bucket_level_access = true
      public_access_prevention    = "enforced"


  logging {
    log_bucket        = "enterprise-qa-3-access-logs"
    log_object_prefix = "qa-3/"
  }

      versioning {
        enabled = true
      }
    }
