
terraform {
  required_version = ">= 1.5.0"
}

module "network" {
  source      = "../../modules/network"
  environment = var.environment
}
