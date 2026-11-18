resource "google_compute_network" "vpc" {
  name                    = var.network_name
  auto_create_subnetworks = false
  routing_mode            = var.routing_mode

  description = "Custom VPC network managed by Terraform"
}