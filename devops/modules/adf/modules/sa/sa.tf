resource "azurerm_storage_account" "sa" {
  resource_group_name = "rg-eu1dadf"
  location = "eastus"
  name = "saeu1ddf1"
  account_tier = "Standard" 
  account_replication_type = "LRS"

}