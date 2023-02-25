output "yandex_vpc_subnet" {
  description = "Yandex.Cloud Subnet"
  value       = data.yandex_vpc_subnet.default
}

output "yandex_vpc_network" {
  description = "Yandex.Cloud Network"
  value       = data.yandex_vpc_network.default
}
