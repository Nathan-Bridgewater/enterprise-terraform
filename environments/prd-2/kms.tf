resource "google_kms_key_ring" "app" {
      name     = "prd-2-app-keyring"
      location = var.region
    }

    resource "google_kms_crypto_key" "app" {
      name            = "prd-2-app-key"
      key_ring        = google_kms_key_ring.app.id
      rotation_period = "7776000s"

      lifecycle {
        prevent_destroy = true
      }
    }
