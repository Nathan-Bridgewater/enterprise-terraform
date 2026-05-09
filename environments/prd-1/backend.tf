terraform {
  backend "gcs" {
    bucket = "enterprise-prd-1-tfstate"
    prefix = "prd-1/state"
  }
}
