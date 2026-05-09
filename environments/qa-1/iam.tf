resource "google_service_account" "test_runner" {
      account_id   = "qa-1-test_runner"
      display_name = "QA1 Test Runner"
    }
    


    resource "google_cloud_run_v2_service" "regression-api" {
      name     = "qa-1-regression-api"
      location = var.region
      ingress  = "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"

      template {
        service_account = google_service_account.test_runner.email

        containers {
          image = "europe-west2-docker.pkg.dev/enterprise-qa-1/apps/regression-api:v1"

          resources {
            limits = {
              cpu    = "1"
              memory = "512Mi"
            }
          }
        }
      }
    }
