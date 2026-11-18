output "cluster_name" {
  description = "Name of the GKE cluster"
  value       = google_container_cluster.cluster.name
}

output "cluster_endpoint" {
  description = "GKE cluster endpoint"
  value       = google_container_cluster.cluster.endpoint
  sensitive   = true
}

output "cluster_location" {
  description = "GKE cluster location"
  value       = google_container_cluster.cluster.location
}

output "node_pool_name" {
  description = "Name of the GKE node pool"
  value       = google_container_node_pool.nodes.name
}