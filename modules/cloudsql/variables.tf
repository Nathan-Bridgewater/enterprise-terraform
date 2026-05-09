variable "name" {
  type = string
}

variable "region" {
  type = string
}

variable "private_network" {
  type = string
}

variable "tier" {
  type    = string
  default = "db-custom-2-7680"
}

variable "availability_type" {
  type    = string
  default = "ZONAL"
}
