variable "azure_rg" {
  description = "Azure resource group"
  type = string
  default = "rg-acg"
}

variable "azure_location" {
  description = "Azure region default is eastus"
  type = string
  default = "eastus"
}

variable "azure_acg" {
  description = "Azure Compute Gallery"
  type = string
  default = "eu1acg"
}