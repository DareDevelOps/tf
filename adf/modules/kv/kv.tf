resource "azurerm_key_vault" "kv" {
  name = "kv-eu1ddf1"
  location = "eastus"
  resource_group_name = "rg-eu1dadf"
  tenant_id = var.tid
  sku_name = "standard"
  enable_rbac_authorization = true
}