
resource "google_binary_authorization_policy" "policy" {
  admission_whitelist_patterns {
    name_pattern = "*"
  }
}
