variable "name" {
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "location" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "managed_by" {
  description = "The ID of the resource or application that manages this Resource Group."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
