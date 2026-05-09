module "vpc" {
  source = "../../modules/vpc"
  name   = "qa-3-vpc"
  region = var.region
  cidr   = "10.15.0.0/24"
}
