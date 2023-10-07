resource "azurerm_network_security_group" "webservers-nsg" {
  name                = "webservers-nsg"
  location            = azurerm_resource_group.app10rg.location
  resource_group_name = azurerm_resource_group.app10rg.name
  tags = {
    CostCenter  = var.costcenter
    Environment = var.env
    Tag1        = "KGF001"
    Tag2        = "Vikram001"
    Tag3        = "Dune001"
  }
}
