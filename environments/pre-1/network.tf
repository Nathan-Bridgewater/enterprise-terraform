module "vpc" {
  source = "../../modules/vpc"
  name   = "pre-1-vpc"
  region = var.region
  cidr   = "10.16.0.0/24"
}
