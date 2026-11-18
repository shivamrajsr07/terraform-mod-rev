variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "rule_name" {
  description = "Firewall rule name"
  type        = string
}

variable "network_self_link" {
  description = "VPC network self link"
  type        = string
}

variable "source_ranges" {
  description = "Source IP ranges allowed to access the VM"
  type        = list(string)
}

variable "protocol" {
  description = "Network protocol"
  type        = string
  default     = "tcp"
}

variable "ports" {
  description = "Allowed network ports"
  type        = list(string)
}

variable "target_tags" {
  description = "Target VM network tags"
  type        = list(string)
}

variable "description" {
  description = "Firewall rule description"
  type        = string
  default     = "Firewall rule managed by Terraform"
}