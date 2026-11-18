variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "service_account_id" {
  description = "Service account ID"
  type        = string
}

variable "display_name" {
  description = "Service account display name"
  type        = string
}

variable "description" {
  description = "Service account description"
  type        = string
  default     = "Service account managed by Terraform"
}

variable "roles" {
  description = "List of IAM roles assigned to service account"
  type        = list(string)
  default     = []
}