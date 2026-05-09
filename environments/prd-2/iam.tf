resource "google_service_account" "reporting_api" {
      account_id   = "prd-2-reporting_api"
      display_name = "PRD2 Reporting Api"
    }
    


    resource "google_cloud_run_v2_service" "reporting-api" {
      name     = "prd-2-reporting-api"
      location = var.region
      ingress  = "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"

      template {
        service_account = google_service_account.reporting_api.email

        containers {
          image = "europe-west2-docker.pkg.dev/enterprise-prd-2/apps/reporting-api:v1"

          resources {
            limits = {
              cpu    = "1"
              memory = "512Mi"
            }
          }
        }
      }
    }
