
resource "null_resource" "database" {
  triggers = {
    module = "database"
  }
}
