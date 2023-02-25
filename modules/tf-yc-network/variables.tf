variable "network_zones" {
  description = "Yandex.Cloud network availability zones"
  type        = set(string)
}

variable "yc_zone" {
  type        = string
  description = "Zone identificator"
  sensitive = false 
  nullable = false
}
