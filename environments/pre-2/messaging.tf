resource "google_pubsub_topic" "events" {
      name         = "pre-2-events"
      kms_key_name = "projects/enterprise-pre-2/locations/europe-west2/keyRings/pre-2-pubsub-keyring/cryptoKeys/pre-2-pubsub-key"

      message_storage_policy {
        allowed_persistence_regions = [var.region]
      }
    }

    resource "google_pubsub_subscription" "events" {
      name  = "pre-2-events-sub"
      topic = google_pubsub_topic.events.name

      ack_deadline_seconds = 20
    }
