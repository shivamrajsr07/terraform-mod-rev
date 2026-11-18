variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "asia-south1"
}

variable "ip_cidr_range" {
  description = "Subnet IP address range"
  type        = string
}

variable "network_self_link" {
  description = "Self link of the VPC network"
  type        = string
}