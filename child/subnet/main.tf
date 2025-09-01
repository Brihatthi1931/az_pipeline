resource "azurerm_subnet" "ppsbnt" {
  name                 = var.sbnt_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.add_pre
}

