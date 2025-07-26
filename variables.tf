variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}

variable "prefix" {
  type = string
  validation {
    condition     = length(var.prefix) >= 1 && length(var.prefix) <= 22 && can(regex("^[a-zA-Z0-9]+$", var.prefix))
    error_message = "Prefix must be 1-22 alphanumeric characters."
  }
}
