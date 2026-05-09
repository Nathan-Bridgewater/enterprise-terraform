terraform {
  backend "gcs" {
    bucket = "enterprise-dev-2-tfstate"
    prefix = "dev-2/state"
  }
}
