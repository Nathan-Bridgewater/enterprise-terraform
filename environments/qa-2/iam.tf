resource "google_service_account" "automation" {
      account_id   = "qa-2-automation"
      display_name = "QA2 Automation"
    }
    


    resource "google_cloud_run_v2_service" "automation-api" {
      name     = "qa-2-automation-api"
      location = var.region
      ingress  = "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"

      template {
        service_account = google_service_account.automation.email

        containers {
          image = "europe-west2-docker.pkg.dev/enterprise-qa-2/apps/automation-api:v1"

          resources {
            limits = {
              cpu    = "1"
              memory = "512Mi"
            }
          }
        }
      }
    }
