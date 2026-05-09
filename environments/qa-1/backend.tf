terraform {
  backend "gcs" {
    bucket = "enterprise-qa-1-tfstate"
    prefix = "qa-1/state"
  }
}
