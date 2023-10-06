resource "azurerm_virtual_network" "vnet1" {
  name                = "${var.rg_name}-vnet1"
  location            = azurerm_resource_group.app10rg.location
  resource_group_name = azurerm_resource_group.app10rg.name
  address_space       = [var.vnet_cidr]
}