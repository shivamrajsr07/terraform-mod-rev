resource "google_compute_firewall" "firewall" {
  name    = var.rule_name
  project = var.project_id
  network = var.network_self_link

  direction     = "INGRESS"
  source_ranges = var.source_ranges
  target_tags   = var.target_tags

  allow {
    protocol = var.protocol
    ports    = var.ports
  }

  description = var.description
}