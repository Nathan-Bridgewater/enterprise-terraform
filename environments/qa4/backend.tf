
terraform {
  backend "gcs" {
    bucket = "enterprise-tf-state"
    prefix = "terraform/state"
  }
}
