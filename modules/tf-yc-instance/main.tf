resource "yandex_compute_instance" "vm-1" {
    name = var.yc_name
    zone = var.yc_zone
    platform_id = var.yc_platform_id

    resources {
        cores  = var.cores
        memory = var.memory
    }

    boot_disk {
        initialize_params {
            image_id = var.yc_image_id
            size = var.size
        }
    }

    network_interface {
        subnet_id = var.yc_subnet_id
        nat       = var.nat
    }

    metadata = {
        user-data = "${file("${var.meta_path}")}"
    }

    scheduling_policy {
      preemptible = var.preemptible
    }
}
