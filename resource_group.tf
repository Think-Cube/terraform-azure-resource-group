resource "azurerm_resource_group" "this" {
  count = var.create ? 1 : 0

  name     = var.resource_group_name != "" ? var.resource_group_name : "${var.environment}-${var.application}-${var.region}-rg"
  location = var.resource_group_location
  tags     = var.default_tags

  depends_on = var.depends_on

  lifecycle {
    prevent_destroy       = var.prevent_destroy
    create_before_destroy = var.create_before_destroy
    ignore_changes        = var.ignore_changes
  }
}
