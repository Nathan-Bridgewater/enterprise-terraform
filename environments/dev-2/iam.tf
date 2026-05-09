resource "google_service_account" "api" {
      account_id   = "dev-2-api"
      display_name = "DEV2 Api"
    }
    


    resource "google_cloud_run_v2_service" "catalog-api" {
      name     = "dev-2-catalog-api"
      location = var.region
      ingress  = "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"

      template {
        service_account = google_service_account.api.email

        containers {
          image = "europe-west2-docker.pkg.dev/enterprise-dev-2/apps/catalog-api:v1"

          resources {
            limits = {
              cpu    = "1"
              memory = "512Mi"
            }
          }
        }
      }
    }
