data "azurerm_client_config" "current" {
}

data "azurerm_key_vault" "datakv" {
  depends_on = [ azurerm_key_vault.kv ]
  for_each            = var.secret
  name                = each.value.key_vault_name
  resource_group_name = each.value.resource_group_name
}
