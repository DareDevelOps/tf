resource "azurerm_key_vault" "kv" {
  name                            = "kv-eu1devops"
  resource_group_name             = var.azurerm_rg
  location                        = var.azurerm_location
  enabled_for_deployment          = true
  enabled_for_template_deployment = true
  tenant_id                       = var.azure_tenant
  sku_name                        = var.azure_kv_sku
}