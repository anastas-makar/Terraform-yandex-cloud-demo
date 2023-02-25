provider "yandex" {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.instance_zone
  service_account_key_file = file("key.json")
}
