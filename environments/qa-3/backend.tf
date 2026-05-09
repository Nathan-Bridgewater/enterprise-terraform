terraform {
  backend "gcs" {
    bucket = "enterprise-qa-3-tfstate"
    prefix = "qa-3/state"
  }
}
