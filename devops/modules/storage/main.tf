resource "azurerm_storage_account" "sa" {
  resource_group_name      = "${var.azurerm_rg}devops"
  location                 = var.azurerm_location
  name                     = var.azurerm_storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier
}