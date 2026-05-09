resource "google_compute_network" "app" {
      name                    = "prd-2-app-vpc"
      auto_create_subnetworks = false
      routing_mode            = "GLOBAL"
    }

    resource "google_compute_subnetwork" "app" {
      name                     = "prd-2-app-subnet"
      region                   = var.region
      ip_cidr_range            = "10.19.0.0/24"
      network                  = google_compute_network.app.id
      private_ip_google_access = true

      log_config {
        aggregation_interval = "INTERVAL_5_SEC"
        flow_sampling        = 0.5
        metadata             = "INCLUDE_ALL_METADATA"
      }
    }
