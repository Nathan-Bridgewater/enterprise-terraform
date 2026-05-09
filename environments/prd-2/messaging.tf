resource "google_pubsub_topic" "events" {
      name         = "prd-2-events"
      kms_key_name = "projects/enterprise-prd-2/locations/europe-west2/keyRings/prd-2-pubsub-keyring/cryptoKeys/prd-2-pubsub-key"

      message_storage_policy {
        allowed_persistence_regions = [var.region]
      }
    }

    resource "google_pubsub_subscription" "events" {
      name  = "prd-2-events-sub"
      topic = google_pubsub_topic.events.name

      ack_deadline_seconds = 20
    }
