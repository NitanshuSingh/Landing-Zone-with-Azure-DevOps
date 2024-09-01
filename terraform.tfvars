shared = {
  vardata = {
    resource_group_name  = "dev-rg"
    location             = "centralindia"
    strg_name            = "devstrg23"
    blob_name            = "dev-container"
    virtual_network_name = "dev-vnet"
    key_vault_name       = "nitanshuvault99"
    subnet_name          = "AzureBastionSubnet"
    address_prefixes     = ["10.0.2.0/26"]
    pipName              = "my-pip"
    bastion_name         = "myBastion"
  }
}

vms = {
  vm1 = {
    resource_group_name  = "dev-rg"
    location             = "centralindia"
    virtual_network_name = "dev-vnet"
    subnet_name          = "dev-subnet1"
    address_prefixes     = ["10.0.0.0/24"]
    nic_name             = "dev-nic1"
    vm_name              = "dev-vm1"
    username             = "linuxadmin"
    password             = "DevOps@2025"
    key_vault_name       = "nitanshuvault99"
  }
  vm2 = {
    resource_group_name  = "dev-rg"
    location             = "centralindia"
    virtual_network_name = "dev-vnet"
    subnet_name          = "dev-subnet2"
    address_prefixes     = ["10.0.1.0/24"]
    nic_name             = "dev-nic2"
    vm_name              = "dev-vm2"
    username             = "linuxadmin"
    password             = "DevOps@2025"
    key_vault_name       = "nitanshuvault99"
  }
}
