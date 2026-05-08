
resource "null_resource" "network" {
  triggers = {
    module = "network"
  }
}
