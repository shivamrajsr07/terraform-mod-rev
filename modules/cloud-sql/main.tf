
resource "google_sql_database_instance" "instance" {
  name             = var.instance_name
  project          = var.project_id
  region           = var.region
  database_version = var.database_version

  deletion_protection = false

  settings {
    tier = var.tier

    availability_type = "ZONAL"

    disk_type       = "PD_SSD"
    disk_size       = var.disk_size
    disk_autoresize = true

    backup_configuration {
      enabled = true
    }
  }
}
