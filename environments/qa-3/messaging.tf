module "events" {
  source     = "../../modules/pubsub"
  topic_name = "qa-3-events"
  region       = var.region
  kms_key_name = "projects/enterprise-qa-3/locations/europe-west2/keyRings/qa-3-pubsub-keyring/cryptoKeys/qa-3-pubsub-key"
}
