variable "network_name" {
  description = "Name of the VPC network"
  type        = string
}

variable "routing_mode" {
  description = "VPC routing mode"
  type        = string
  default     = "GLOBAL"

  validation {
    condition = contains(
      ["GLOBAL", "REGIONAL"],
      var.routing_mode
    )
    error_message = "Routing mode must be GLOBAL or REGIONAL."
  }
}