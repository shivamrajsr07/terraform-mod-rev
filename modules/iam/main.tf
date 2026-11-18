resource "google_service_account" "service_account" {
  project      = var.project_id
  account_id   = var.service_account_id
  display_name = var.display_name
  description  = var.description
}

resource "google_project_iam_member" "iam_member" {
  for_each = toset(var.roles)

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.service_account.email}"
}