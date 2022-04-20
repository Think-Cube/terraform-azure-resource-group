resource "azurerm_resource_group" "main" {
  name     = "${var.environment}-${var.resource_group_name}-${var.region}-rg"
  location = "${var.resource_group_location}"

  tags = {
    owner-department = "${var.tag_owner}"
    environment = "${var.tag_environment}"
  }
}