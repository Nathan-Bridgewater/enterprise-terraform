
resource "null_resource" "compute" {
  triggers = {
    module = "compute"
  }
}
