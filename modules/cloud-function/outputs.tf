
output "function_name" {
  value = google_cloudfunctions2_function.function.name
}

output "function_uri" {
  value = google_cloudfunctions2_function.function.service_config[0].uri
}

output "function_id" {
  value = google_cloudfunctions2_function.function.id
}
