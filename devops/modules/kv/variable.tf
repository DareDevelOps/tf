variable "azure_kv_sku" {
  description = "Default approved SKU name"
  type        = string
  default     = "standard"
}

variable "azurerm_rg" {
  description = "Azure resource group name."
  type        = string
  default     = "rg-"
}

variable "azurerm_key_vault_tid" {
  description = "Azure AAD tenant ID"
  type        = string
  default     = "12b53659-ab0b-4662-a577-ca5c6d77264d"
}

variable "azurerm_location" {
  description = "Azure location"
  type        = string
  default     = "eastus"
}

