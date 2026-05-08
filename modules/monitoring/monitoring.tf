
resource "null_resource" "monitoring" {
  triggers = {
    module = "monitoring"
  }
}
