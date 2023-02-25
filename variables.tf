variable "instance_zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.instance_zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  sensitive = true
  nullable = false
}

variable "folder_id" {
  type        = string
  description = "Yandex cloud folder id"
  sensitive = true
  nullable = false
}

variable "cloud_id" {
  type        = string
  description = "Yandex cloud id"
  sensitive = true
  nullable = false
}

variable "yc_name" {
  default     = "mybeautifulcloudname"
  type        = string
  description = "name"
  sensitive = true
  nullable = false
}

variable "yc_zone" {
  type        = string
  description = "Zone identificator"
  sensitive = false 
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

variable "network_zones" {
  description = "Yandex.Cloud network availability zones"
  type        = set(string)
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
