resource "azurerm_subnet" "subnet" {
  for_each             = var.subnet
  name                 = each.value.subnet_name
  address_prefixes     = each.value.address_prefixes
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}
