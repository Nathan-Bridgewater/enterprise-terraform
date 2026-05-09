terraform {
  backend "gcs" {
    bucket = "enterprise-dev-3-tfstate"
    prefix = "dev-3/state"
  }
}
