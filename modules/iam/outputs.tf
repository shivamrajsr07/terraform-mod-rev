output "service_account_email" {
  description = "Created service account email"
  value       = google_service_account.service_account.email
}

output "service_account_id" {
  description = "Created service account unique ID"
  value       = google_service_account.service_account.id
}

output "service_account_name" {
  description = "Created service account name"
  value       = google_service_account.service_account.name
}