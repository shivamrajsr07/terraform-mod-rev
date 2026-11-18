variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
}

variable "location" {
  description = "GKE zone or region"
  type        = string
  default     = "asia-south1-a"
}

variable "network_self_link" {
  description = "VPC network self link"
  type        = string
}

variable "subnet_self_link" {
  description = "Subnet self link"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the node pool"
  type        = number
  default     = 1

  validation {
    condition     = var.node_count >= 1 && var.node_count <= 3
    error_message = "Node count must be between 1 and 3 for this lab."
  }
}

variable "machine_type" {
  description = "GKE node machine type"
  type        = string
  default     = "e2-small"
}

variable "service_account_email" {
  description = "Service account used by GKE nodes"
  type        = string
}