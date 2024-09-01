resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnet
  name                = each.value.virtual_network_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = ["10.0.0.0/16"]

}
