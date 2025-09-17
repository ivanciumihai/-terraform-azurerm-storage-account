variable "resource_group_name" {
  type        = string
  description = "Name of the existing Resource Group"
  validation {
    condition     = length(var.resource_group_name) > 0
    error_message = "resource_group_name must not be empty"
  }
}

variable "location" {
  type        = string
  description = "Azure region"
  validation {
    condition     = length(var.location) > 0
    error_message = "location must not be empty"
  }
}

variable "storage_account_name" {
  type        = string
  description = "Globally-unique Storage Account name"
  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "storage_account_name must be 3-24 lower-case alphanumeric"
  }
}

variable "environment" {
  type        = string
  description = "Environment tag value"
  validation {
    condition     = can(regex("^[A-Za-z0-9_-]+$", var.environment))
    error_message = "environment may contain letters, numbers, underscore and hyphen"
  }
}
