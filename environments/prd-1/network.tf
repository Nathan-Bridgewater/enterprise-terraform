module "vpc" {
  source = "../../modules/vpc"
  name   = "prd-1-vpc"
  region = var.region
  cidr   = "10.18.0.0/24"
}
