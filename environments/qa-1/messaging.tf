resource "google_pubsub_topic" "events" {
      name         = "qa-1-events"
      kms_key_name = "projects/enterprise-qa-1/locations/europe-west2/keyRings/qa-1-pubsub-keyring/cryptoKeys/qa-1-pubsub-key"

      message_storage_policy {
        allowed_persistence_regions = [var.region]
      }
    }

    resource "google_pubsub_subscription" "events" {
      name  = "qa-1-events-sub"
      topic = google_pubsub_topic.events.name

      ack_deadline_seconds = 20
    }
