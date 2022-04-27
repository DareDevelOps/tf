# Basic module components
variable "azurerm_rg" {
  description = "Azure resource group name."
  type        = string
  default     = "rg-"
}

variable "azurerm_location" {
  description = "Azure location"
  type        = string
  default     = "eastus"
}

variable "azure_tenant" {
  description = "Azure Tenant ID"
  type        = string
  default     = "12b53659-ab0b-4662-a577-ca5c6d77264d"
}

