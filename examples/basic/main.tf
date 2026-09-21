module "resource_group" {
  source = "../.."

  name     = "rg-myapp-dev"
  location = "West Europe"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}