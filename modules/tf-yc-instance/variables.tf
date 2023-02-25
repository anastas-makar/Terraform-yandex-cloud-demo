variable "yc_name" {
  default     = "cloud-praktikumdevopscourse"
  type        = string
  description = "name"
  sensitive = true
  nullable = false
}

variable "yc_zone" {
  type        = string
  description = "Zone identificator"
  sensitive = true
  nullable = false
}

variable "yc_platform_id" {
  type        = string
  description = "Platform"
  sensitive = true
  nullable = false
}

variable "yc_image_id" {
  type        = string
  description = "Image id"
  sensitive = true
  nullable = false
}

variable "yc_subnet_id" {
  type        = string
  description = "Subnet id"
  sensitive = true
  nullable = false
}

variable "cores" {
  type        = number
  description = "Cores"
  sensitive = true
  nullable = false
}

variable "memory" {
  type        = number
  description = "Memory"
  sensitive = true
  nullable = false
}

variable "size" {
  type        = number
  description = "boot disk size"
  sensitive = true
  nullable = false
}

variable "nat" {
  type        = bool
  default     = false
  description = "Defines should nat be used to create external network ip address or not"
  sensitive = true
  nullable = false
}

variable "preemptible" {
  type        = bool
  default     = true
  description = "Defines if vm is preemptible"
  sensitive = true
  nullable = false
}

variable "meta_path" {
  type        = string
  description = "Path to meta"
  sensitive = true
  nullable = false
}
