module "orders_api" {
  source          = "../../modules/cloud-run"
  name            = "dev-1-orders-api"
  region          = var.region
  service_account = module.app_sa.email
  image           = "europe-west2-docker.pkg.dev/enterprise-dev-1/apps/orders-api:v1"
}
