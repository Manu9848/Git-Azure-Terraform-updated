resource "azurerm_virtual_network" "vnet1" {
  name                = "${var.rg_name}-vnet1"
  location            = azurerm_resource_group.app10rg.location
  resource_group_name = azurerm_resource_group.app10rg.name
  address_space       = [var.vnet_cidr]
}

#Subnets for Web servers
resource "azurerm_subnet" "web-servers" {
  name                 = "${var.rg_name}-vnet1-webservers"
  resource_group_name  = azurerm_resource_group.app10rg.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.vnet_cidr_webservers]
}

#Subnets for App servers
resource "azurerm_subnet" "app-servers" {
  name                 = "${var.rg_name}-vnet1-appservers"
  resource_group_name  = azurerm_resource_group.app10rg.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.vnet_cidr_appservers]
}

#Subnets for DB servers
resource "azurerm_subnet" "db-servers" {
  name                 = "${var.rg_name}-vnet1-dbservers"
  resource_group_name  = azurerm_resource_group.app10rg.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.vnet_cidr_dbservers]
}

#Azure firewall
resource "azurerm_subnet" "fwsubnet" {
  name                 = "AzureFirewallSubnet"
  resource_group_name  = azurerm_resource_group.app10rg.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.AzureFirewallSubnet]
}