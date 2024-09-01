resource "azurerm_network_interface" "nic" {
  for_each            = var.vm
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  ip_configuration {
    name                          = "dhondhuips"
    subnet_id                     = data.azurerm_subnet.subnet1[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  depends_on = [ azurerm_network_interface.nic ]
  for_each                        = var.vm
  name                            = each.value.vm_name
  location                        = each.value.location
  admin_username                  = each.value.username
  admin_password                  = each.value.password
  disable_password_authentication = false
  size                            = "Standard_F2"
  resource_group_name             = each.value.resource_group_name
  network_interface_ids           = [data.azurerm_network_interface.nicdata1[each.key].id]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
