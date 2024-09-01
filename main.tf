module "rg" {
  source = "./Resource_Group"
  rg     = var.shared
}

module "strg" {
  depends_on = [module.rg]
  source     = "./Storage_Account"
  strg       = var.shared
}

module "blob" {
  depends_on = [module.strg]
  source     = "./Storage_Container"
  blob       = var.shared
}

module "vnet" {
  depends_on = [module.rg]
  source     = "./Virtual_Network"
  vnet       = var.shared
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "./Subnet"
  subnet     = var.vms
}
module "keyvault" {
  depends_on = [module.rg]
  source     = "./KeyVault"
  kv         = var.shared
  secret     = var.vms
}

module "vm" {
  depends_on = [module.subnet, module.rg, module.keyvault]
  source     = "./Virtual_Machine"
  vm         = var.vms
  subnet     = var.vms
}

module "bastion" {
  depends_on = [module.subnet, module.rg]
  source     = "./Bastion_Host"
  pip        = var.shared
  subnet     = var.shared
}
