output "instance_subnet_id" {
    value = module.yandex_cloud_network.yandex_vpc_subnet.subnet_id
}

output "ip_address" {
   value = module.yandex_cloud_instance.ip_address 
}

output "nat_ip_address" {
    value =  module.yandex_cloud_instance.nat_ip_address
}
