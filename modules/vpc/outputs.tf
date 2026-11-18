output "network_name" {
  description = "Name of the created VPC network"
  value       = google_compute_network.vpc.name
}

output "network_id" {
  description = "ID of the created VPC network"
  value       = google_compute_network.vpc.id
}

output "network_self_link" {
  description = "Self link of the VPC network"
  value       = google_compute_network.vpc.self_link
}