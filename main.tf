resource "azurerm_storage_account" "this" {
  name                     = substr(lower(replace(var.resource_group_name, "-", "")) + "sa", 0, 24)
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}
