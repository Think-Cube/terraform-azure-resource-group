variable "create" {
  description = "Whether to create the Resource Group. Set to false to skip creation."
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment name used when generating a default Resource Group name."
  type        = string
  default     = "dev"
}

variable "application" {
  description = "Application name used when generating a default Resource Group name."
  type        = string
  default     = "app"
}

variable "region" {
  description = "Short region code used when generating a default Resource Group name."
  type        = string
  default     = "weu"
}

variable "resource_group_name" {
  description = "Optional explicit name for the Resource Group. If empty, a name will be generated."
  type        = string
  default     = ""
}

variable "resource_group_location" {
  description = "The Azure location/region where the Resource Group will be created."
  type        = string
  default     = "westeurope"
}

variable "default_tags" {
  description = "A mapping of tags to assign to the Resource Group."
  type        = map(any)
  default     = {}
}

variable "prevent_destroy" {
  description = "Controls lifecycle.prevent_destroy for the resource group."
  type        = bool
  default     = false
}

variable "create_before_destroy" {
  description = "Controls lifecycle.create_before_destroy for the resource group."
  type        = bool
  default     = false
}

variable "ignore_changes" {
  description = "A list of attributes to ignore changes for in the lifecycle.ignore_changes meta-argument."
  type        = list(any)
  default     = []
}

variable "depends_on" {
  description = "Optional dependencies to force ordering with other resources or modules."
  type        = list(any)
  default     = []
}
