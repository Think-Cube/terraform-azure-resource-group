###########################
# Common vars
###########################
variable "environment" {
  description = "Variable that defines the name of the environment."
  type = string
  default = "dev"
}
variable "tag_environment" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type = string
  default = "dev"
}
variable "resource_owner" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type = string
  default = "Test organization"
}
variable "region" {
  description = "Region in which resources are deployed."
  type = string
  default = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type = string
}