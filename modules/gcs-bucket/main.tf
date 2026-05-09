resource "google_storage_bucket" "this" {
  name                        = var.name
  location                    = var.location
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"


  logging {
    log_bucket        = var.log_bucket
    log_object_prefix = var.log_object_prefix
  }

  versioning {
    enabled = true
  }
}
