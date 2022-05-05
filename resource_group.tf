resource "azurerm_resource_group" "main" {
  name     = "${var.environment}-${var.resource_group_name}-${var.region}-rg"
  location = "${var.resource_group_location}"

  tags = "${var.default_tags}"
}