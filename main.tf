resource "azurerm_resource_group" "rg-1" {
  name = var.rg_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet-1" {
  name = var.vnet_name
  resource_group_name = azurerm_resource_group.name
  location = azurerm_resource_group.location
  address_space = ["10.0.0.0/16"]
  subnet {
    name = var.subnet-1
    address_prefix = "10.0.1.0/24"
  }
  