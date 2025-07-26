resource "azurerm_storage_account" "this" {
  name = format("%ssa", substr(lower(replace(var.resource_group_name, "-", "")), 0, 20))
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}
