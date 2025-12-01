# Terraform Azure Resource Group Module

This module creates an **Azure Resource Group** with standardized naming and tagging conventions.

## Description

The module provisions an Azure Resource Group and automatically generates a consistent name if none is provided.  
It uses the following naming pattern: `<environment>-<application>-<region>-rg`

This ensures predictable and organized resource naming across environments.

## Features

- Automatically generates a **resource group name** based on environment, application, and region  
- Supports **custom name override** if `resource_group_name` is provided  
- Applies **default tags** for consistent resource metadata  
- Allows flexible **location selection** for deployment  

## Typical Use Cases

- Foundation module for all Azure infrastructure components  
- Used as a dependency for other Terraform modules (ACR, Redis, App Service, etc.)  
- Useful for maintaining consistent naming and tagging across environments  

## Notes

- If `resource_group_name` is empty, the name will be generated automatically.  
- Ensure the provided location matches Azure region naming conventions (e.g., `westeurope`, `eastus`).  
- Recommended as the **first module** to run in an Azure infrastructure stack.

```
module "resource_group" {
  source = "./terraform-azure-resource-group"

  environment             = "dev"
  application             = "webapp"
  region                  = "westeurope"
  resource_group_name     = ""
  resource_group_location = "westeurope"

  default_tags = {
    environment = "dev"
    project     = "example"
  }
}

```