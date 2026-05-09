module "orders_api" {
  source          = "../../modules/cloud-run"
  name            = "prd-1-orders-api"
  region          = var.region
  service_account = module.api_sa.email
  image           = "europe-west2-docker.pkg.dev/enterprise-prd-1/apps/orders-api:v1"
}
