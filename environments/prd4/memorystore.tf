
resource "google_redis_instance" "cache" {
  name           = "redis-${var.environment}"
  memory_size_gb = 1
  region         = var.region
}
