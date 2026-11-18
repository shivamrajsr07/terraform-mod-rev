resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  project       = var.project_id
  location      = var.location
  storage_class = var.storage_class

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = false

  versioning {
    enabled = var.enable_versioning
  }

  labels = var.labels
}