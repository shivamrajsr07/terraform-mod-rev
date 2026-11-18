variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "bucket_name" {
  description = "Globally unique storage bucket name"
  type        = string
}

variable "location" {
  description = "Bucket location"
  type        = string
  default     = "ASIA-SOUTH1"
}

variable "storage_class" {
  description = "Storage class"
  type        = string
  default     = "STANDARD"
}

variable "enable_versioning" {
  description = "Enable object versioning"
  type        = bool
  default     = true
}

variable "labels" {
  description = "Labels assigned to the bucket"
  type        = map(string)
  default = {
    managed_by  = "terraform"
    environment = "dev"
  }
}