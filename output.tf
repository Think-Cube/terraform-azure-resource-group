output "id" {
  description = "The ID of the Resource Group."
  value       = "${azurerm_resource_group.main.id}"
  sensitive = false
}