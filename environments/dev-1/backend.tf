terraform {
  backend "gcs" {
    bucket = "enterprise-dev-1-tfstate"
    prefix = "dev-1/state"
  }
}
