resource "google_compute_instance" "vm" {
  name         = var.vm_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  tags = var.network_tags

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.boot_disk_size
      type  = var.boot_disk_type
    }
  }

  network_interface {
    subnetwork = var.subnet_self_link

    dynamic "access_config" {
      for_each = var.enable_public_ip ? [1] : []

      content {}
    }
  }

  service_account {
    email  = var.service_account_email
    scopes = ["cloud-platform"]
  }

  metadata = {
    environment = var.environment
  }

  labels = {
    environment = var.environment
    managed_by  = "terraform"
  }
}