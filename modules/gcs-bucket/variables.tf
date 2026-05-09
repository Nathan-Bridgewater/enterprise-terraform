variable "name" {
  type = string
}

variable "location" {
  type    = string
  default = "EU"
}


variable "log_bucket" {
  type    = string
  default = "enterprise-central-access-logs"
}

variable "log_object_prefix" {
  type    = string
  default = "gcs/"
}
