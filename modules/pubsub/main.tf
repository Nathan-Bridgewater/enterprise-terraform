resource "google_pubsub_topic" "this" {
  name         = var.topic_name
  kms_key_name = var.kms_key_name

  message_storage_policy {
    allowed_persistence_regions = [var.region]
  }
}

resource "google_pubsub_subscription" "this" {
  name  = "${var.topic_name}-sub"
  topic = google_pubsub_topic.this.name

  ack_deadline_seconds = 20

  retry_policy {
    minimum_backoff = "10s"
    maximum_backoff = "60s"
  }
}
