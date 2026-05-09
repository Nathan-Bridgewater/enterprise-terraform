terraform {
  backend "gcs" {
    bucket = "enterprise-prd-2-tfstate"
    prefix = "prd-2/state"
  }
}
