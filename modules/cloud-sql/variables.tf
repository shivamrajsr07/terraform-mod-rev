
variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "instance_name" {
  description = "Cloud SQL instance name"
  type        = string
}

variable "region" {
  description = "Cloud SQL region"
  type        = string
  default     = "asia-south1"
}

variable "database_version" {
  description = "Database engine version"
  type        = string
  default     = "POSTGRES_16"
}

variable "tier" {
  description = "Cloud SQL machine tier"
  type        = string
  default     = "db-f1-micro"
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
  default     = 10
}
