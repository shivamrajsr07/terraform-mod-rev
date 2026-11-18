variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
}

variable "machine_type" {
  description = "GCP machine type"
  type        = string
  default     = "e2-micro"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "asia-south1-a"
}

variable "image" {
  description = "Boot disk operating system image"
  type        = string
  default     = "debian-cloud/debian-12"
}

variable "boot_disk_size" {
  description = "Boot disk size in GB"
  type        = number
  default     = 10
}

variable "boot_disk_type" {
  description = "Boot disk type"
  type        = string
  default     = "pd-balanced"
}

variable "subnet_self_link" {
  description = "Subnet self link"
  type        = string
}

variable "service_account_email" {
  description = "VM service account email"
  type        = string
}

variable "network_tags" {
  description = "Network tags for firewall targeting"
  type        = list(string)
  default     = []
}

variable "enable_public_ip" {
  description = "Whether to assign an external IP"
  type        = bool
  default     = false
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}