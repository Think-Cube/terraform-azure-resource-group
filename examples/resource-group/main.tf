provider "azurerm" {
features {}
}

module "rg" {
  source  = "Think-Cube/resource-group/azure"
  version = "1.0.0"
  resource_group_name = "test"
  environment = "dev" 
  region = "weu"
  resource_group_location = "West Europe"

  default_tags = {
      Administrator     = "John Doe"
      Department        = "IT"
      CostCentre        = "CC123"
      ContactPerson     = "Jane Smith"
      ManagedByTerraform = "True"
}
}