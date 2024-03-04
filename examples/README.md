# Terraform Module: Think-Cube/resource-group/azure

This Terraform module simplifies the creation of an Azure Resource Group and allows customization through various parameters.

## Usage

### Example

```hcl
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
```

### Variables

* `resource_group_name`: Specifies the name for the Azure Resource Group.
* `environment`: Specifies the name of the environment.
* `region`: Defines the target region for the Azure Resource Group.
* `resource_group_location`: Specifies the Azure Region where the Resource Group should be located.
* `default_tags`: A set of default tags applied to the Azure Resource Group.

### Outputs

* `id`: The ID of the created Azure Resource Group.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contribution

Feel free to contribute by opening issues or pull requests. Your feedback and improvements are highly appreciated!
