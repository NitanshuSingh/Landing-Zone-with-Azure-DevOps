resource "azurerm_storage_container" "blob" {
  for_each              = var.blob
  name                  = each.value.blob_name
  storage_account_name  = each.value.strg_name
  container_access_type = "private"
}
