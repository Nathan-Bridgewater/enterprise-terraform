resource "google_cloud_run_v2_service" "settlement-worker" {
      name     = "pre-2-settlement-worker"
      location = var.region
      ingress  = "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"

      template {
        service_account = google_service_account.settlement_worker.email

        containers {
          image = "europe-west2-docker.pkg.dev/enterprise-pre-2/apps/settlement-worker:v1"

          resources {
            limits = {
              cpu    = "1"
              memory = "512Mi"
            }
          }
        }
      }
    }
