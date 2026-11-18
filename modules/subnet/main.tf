resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  project       = var.project_id
  region        = var.region
  ip_cidr_range = var.ip_cidr_range

  network = var.network_self_link

  private_ip_google_access = true

  description = "Subnet managed by Terraform"
}