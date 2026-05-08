
resource "null_resource" "security" {
  triggers = {
    module = "security"
  }
}
