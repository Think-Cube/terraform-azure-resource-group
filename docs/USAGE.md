# Usage

Examples are available under the examples/ directory. Use the module as:

module "resource_group" {
  source = "./"

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
