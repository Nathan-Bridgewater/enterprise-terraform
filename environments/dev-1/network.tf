module "vpc" {
  source = "../../modules/vpc"
  name   = "dev-1-vpc"
  region = var.region
  cidr   = "10.10.0.0/24"
}
