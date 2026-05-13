module "postgres" {
  source            = "../../modules/cloudsql"
  name              = "pre-1-payments-db"
  region            = var.region
  private_network   = module.vpc.network_id
  availability_type = "ZONAL"
  require_ssl       = true
}
