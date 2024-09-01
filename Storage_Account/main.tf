resource "azurerm_storage_account" "strg" {
    for_each = var.strg
    name = each.value.strg_name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    account_tier = "Standard"
    account_replication_type = "LRS"
}