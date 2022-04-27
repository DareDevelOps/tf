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

variable "azurerm_storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "account_tier" {
  description = "Account tier for the storage account default is Standard"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage replcation selection default is LRS"
  type        = string
  default     = "LRS"
}

variable "access_tier" {
  description = "Sets the access tier to hot by default"
  type        = string
  default     = "Hot"
}