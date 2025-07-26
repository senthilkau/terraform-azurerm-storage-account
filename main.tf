resource "azurerm_storage_account" "this" {
  name = format(
    "%ssa",
    substr(
      lower(replace(replace(var.resource_group_name, "[^a-zA-Z0-9]", ""), "-", "")),
      0,
      20
    )
  )
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}
