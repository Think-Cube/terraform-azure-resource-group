variable "environment" {
  description = "Variable that defines the name of the environment."
  type        = string
  default     = "dev"
}

variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
}

variable "region" {
  description = "Region in which resources are deployed."
  type        = string
  default     = "weu"
}

variable "resource_group_location" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  default     = "West Europe"
  type        = string
}

variable "resource_group_name" {
  description = "The Name which should be used for this Resource Group. If not provided, a default name will be generated. Changing this forces a new Resource Group to be created."
  type        = string
  default     = ""
}

variable "application" {
  description = "The application name to be used in the default resource group name if resource_group_name is not provided."
  type        = string
  default     = "app"
}
