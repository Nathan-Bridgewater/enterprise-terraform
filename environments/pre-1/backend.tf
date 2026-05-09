terraform {
  backend "gcs" {
    bucket = "enterprise-pre-1-tfstate"
    prefix = "pre-1/state"
  }
}
