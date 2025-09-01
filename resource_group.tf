resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name != "" ? var.resource_group_name : "${var.environment}-${var.application}-${var.region}-rg"
  location = var.resource_group_location
  tags     = var.default_tags
}
