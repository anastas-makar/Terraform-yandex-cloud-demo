module "yandex_cloud_instance" {
    yc_name = var.yc_name
    yc_zone = var.yc_zone
    yc_platform_id = var.yc_platform_id
    yc_image_id = var.yc_image_id
    yc_subnet_id = var.yc_subnet_id
    cores = var.cores
    memory = var.memory
    size = var.size
    nat = var.nat
    preemptible = var.preemptible
    meta_path=var.meta_path

    source = "./modules/tf-yc-instance"
}

module "yandex_cloud_network" {
    network_zones = var.network_zones
    yc_zone = var.yc_zone

    source = "./modules/tf-yc-network"
} 
