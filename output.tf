output "id" {
  description = "The ID of the Resource Group."
  value       = try(azurerm_resource_group.this[0].id, "")
  sensitive   = false
}

output "name" {
  description = "The name of the Resource Group."
  value       = try(azurerm_resource_group.this[0].name, "")
  sensitive   = false
}

output "location" {
  description = "The location of the Resource Group."
  value       = try(azurerm_resource_group.this[0].location, "")
}

output "tags" {
  description = "Tags assigned to the Resource Group."
  value       = try(azurerm_resource_group.this[0].tags, {})
}
