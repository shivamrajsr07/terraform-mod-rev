resource "google_container_cluster" "cluster" {
  name     = var.cluster_name
  project  = var.project_id
  location = var.location

  network    = var.network_self_link
  subnetwork = var.subnet_self_link

  deletion_protection = false

  remove_default_node_pool = true
  initial_node_count       = 1

  release_channel {
    channel = "REGULAR"
  }
}

resource "google_container_node_pool" "nodes" {
  name     = "${var.cluster_name}-node-pool"
  project  = var.project_id
  location = var.location
  cluster  = google_container_cluster.cluster.name

  node_count = var.node_count

  node_config {
    machine_type    = var.machine_type
    service_account = var.service_account_email

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    labels = {
      environment = "dev"
      managed_by  = "terraform"
    }
  }
}