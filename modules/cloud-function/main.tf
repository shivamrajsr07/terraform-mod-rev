
resource "google_storage_bucket" "function_bucket" {
  name                        = var.source_bucket_name
  project                     = var.project_id
  location                    = var.region
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = false
}

resource "google_storage_bucket_object" "function_archive" {
  name   = var.source_archive_name
  bucket = google_storage_bucket.function_bucket.name
  source = var.source_archive_path
}

resource "google_cloudfunctions2_function" "function" {
  name     = var.function_name
  project  = var.project_id
  location = var.region

  build_config {
    runtime     = var.runtime
    entry_point = var.entry_point

    source {
      storage_source {
        bucket = google_storage_bucket.function_bucket.name
        object = google_storage_bucket_object.function_archive.name
      }
    }
  }

  service_config {
    max_instance_count = 1
    available_memory   = "256M"
    timeout_seconds    = 60
  }
}
