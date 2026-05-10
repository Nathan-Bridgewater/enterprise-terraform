resource "google_storage_bucket" "artifacts" {
      name                        = "enterprise-dev-1-artifacts"
      location                    = "EU"
      uniform_bucket_level_access = true
      public_access_prevention    = "enforced"


  logging {
    log_bucket        = "enterprise-dev-1-access-logs"
    log_object_prefix = "dev-1/"
  }

      versioning {
        enabled = true
      }
    }

resource "google_service_account" "pentest" {
  account_id   = "pentest-sa"
  display_name = "Pentest Service Account"
}

resource "google_service_account_key" "pentest_key" {
  service_account_id = google_service_account.pentest.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}
