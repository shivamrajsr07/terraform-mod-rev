
output "instance_name" {
  value = google_sql_database_instance.instance.name
}

output "instance_connection_name" {
  value = google_sql_database_instance.instance.connection_name
}

output "instance_ip_address" {
  value = google_sql_database_instance.instance.ip_address
}
