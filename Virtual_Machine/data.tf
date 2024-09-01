data "azurerm_subnet" "subnet1" {
  for_each             = var.subnet
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}

data "azurerm_network_interface" "nicdata1" {
  depends_on = [ azurerm_network_interface.nic ]
  for_each = var.vm
  name = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}