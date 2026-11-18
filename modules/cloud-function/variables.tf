
variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "function_name" {
  description = "Cloud Function name"
  type        = string
}

variable "region" {
  description = "Deployment region"
  type        = string
  default     = "asia-south1"
}

variable "runtime" {
  description = "Cloud Function runtime"
  type        = string
  default     = "python312"
}

variable "entry_point" {
  description = "Function entry point"
  type        = string
}

variable "source_bucket_name" {
  description = "Bucket to store function source code"
  type        = string
}

variable "source_archive_name" {
  description = "Name of the source ZIP object"
  type        = string
  default     = "function-source.zip"
}

variable "source_archive_path" {
  description = "Local path to function source ZIP"
  type        = string
}
