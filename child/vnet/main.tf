resource "azurerm_virtual_network" "ppvnet" {
  name                = var.vnet_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  address_space       = var.add_spc
}
