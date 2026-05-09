module "vpc" {
  source = "../../modules/vpc"
  name   = "qa-1-vpc"
  region = var.region
  cidr   = "10.13.0.0/24"
}
