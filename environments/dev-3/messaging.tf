module "events" {
  source     = "../../modules/pubsub"
  topic_name = "dev-3-events"
  region       = var.region
  kms_key_name = "projects/enterprise-dev-3/locations/europe-west2/keyRings/dev-3-pubsub-keyring/cryptoKeys/dev-3-pubsub-key"
}
