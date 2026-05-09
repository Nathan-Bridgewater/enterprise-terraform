module "qa_bucket" {
  source   = "../../modules/gcs-bucket"
  name     = "enterprise-qa-2-qa-results"
  location = "EU"
}
