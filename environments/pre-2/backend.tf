terraform {
  backend "gcs" {
    bucket = "enterprise-pre-2-tfstate"
    prefix = "pre-2/state"
  }
}
