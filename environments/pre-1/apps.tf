resource "google_cloud_run_v2_service" "payments-api" {
      name     = "pre-1-payments-api"
      location = var.region
      ingress  = "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"

      template {
        service_account = google_service_account.api.email

        containers {
          image = "europe-west2-docker.pkg.dev/enterprise-pre-1/apps/payments-api:v1"

          resources {
            limits = {
              cpu    = "1"
              memory = "512Mi"
            }
          }
        }
      }
    }
