resource "azurerm_resource_group" "main" {
  name       = var.name
  location   = var.location
  managed_by = var.managed_by
  tags       = var.tags
}
