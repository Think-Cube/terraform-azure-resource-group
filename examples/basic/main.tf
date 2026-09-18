module "resource_group" {
  source = "github.com/Think-Cube/terraform-azure-resource-group?ref=v1.0.0"

  name     = "rg-myapp-dev"
  location = "West Europe"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}