## How to use

```
provider "azurerm" {
features {}
}

module "rg" {
  source  = "spy86/rg/azure"
  version = "1.0.5"
  resource_group_name = "test"
  environment = "dev" 
  region = "weu"
  resource_group_location = "West Europe"

  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}
```