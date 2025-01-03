output "id" {
  description = "The ID of the Resource Group."
  value       = azurerm_resource_group.main.id
  sensitive   = false
}
output "name" {
  description = "The Name of the Resource Group."
  value       = azurerm_resource_group.main.name
  sensitive   = false
}
