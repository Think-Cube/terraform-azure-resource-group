module "resource_group" {
  source                  = "./terraform-azure-resource-group"
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
