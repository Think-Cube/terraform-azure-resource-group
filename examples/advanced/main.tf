module "resource_group" {
  source = "../.."

  name       = "rg-myapp-prod"
  location   = "West Europe"
  managed_by = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-management/providers/Microsoft.Compute/virtualMachines/management-vm"

  tags = {
    environment = "prod"
    managed_by  = "terraform"
    cost_center = "platform"
    owner       = "platform-team"
  }
}