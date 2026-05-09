terraform {
  backend "gcs" {
    bucket = "enterprise-qa-2-tfstate"
    prefix = "qa-2/state"
  }
}
