






resource "azurerm_key_vault" "kv" {
  name                            = "kv-eu1devops"
  resource_group_name             = "${var.azurerm_rg}eu1d-devops"
  location                        = var.azurerm_location
  enabled_for_deployment          = true
  enabled_for_template_deployment = true
  tenant_id                       = var.azurerm_key_vault_tid
  sku_name                        = var.azure_kv_sku

  
}