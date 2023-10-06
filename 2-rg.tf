resource "azurerm_resource_group" "app10rg" {
  name     = var.rg_name
  location = var.rg_location
  tags = {
    CostCenter  = var.costcenter
    Environment = var.env
  }
}
