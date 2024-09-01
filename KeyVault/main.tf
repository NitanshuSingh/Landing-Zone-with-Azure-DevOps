resource "azurerm_key_vault" "kv" {
  depends_on                 = [data.azurerm_client_config.current]
  for_each                   = var.kv
  name                       = each.value.key_vault_name
  location                   = each.value.location
  resource_group_name        = each.value.resource_group_name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "premium"
  soft_delete_retention_days = 7

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create",
      "Get",
    ]

    secret_permissions = ["Set","Get","Delete","Purge","Recover","List"]
  }
}

resource "azurerm_key_vault_secret" "secret" {
  depends_on = [ data.azurerm_key_vault.datakv ]
  for_each     = var.secret
  name         = each.value.username
  value        = each.value.password
  key_vault_id = data.azurerm_key_vault.datakv[each.key].id
}
