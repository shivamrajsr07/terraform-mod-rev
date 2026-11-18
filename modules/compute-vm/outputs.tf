output "vm_name" {
  description = "Name of the VM"
  value       = google_compute_instance.vm.name
}

output "vm_id" {
  description = "ID of the VM"
  value       = google_compute_instance.vm.id
}

output "vm_internal_ip" {
  description = "Internal IP address of the VM"
  value       = google_compute_instance.vm.network_interface[0].network_ip
}

output "vm_external_ip" {
  description = "External IP address of the VM"
  value       = try(google_compute_instance.vm.network_interface[0].access_config[0].nat_ip, null)
}