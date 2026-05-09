module "postgres" {
  source            = "../../modules/cloudsql"
  name              = "prd-1-orders-db"
  region            = var.region
  private_network   = module.vpc.network_id
  availability_type = "REGIONAL"
  tier              = "db-custom-4-15360"
}
