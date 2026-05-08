
resource "null_resource" "cicd" {
  triggers = {
    pipeline = "cloud-build"
  }
}
