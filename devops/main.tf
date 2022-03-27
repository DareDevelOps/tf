terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.0.0"
     }
  }
  backend "azurerm" {
    resource_group_name = "rg-eu1iac"
    storage_account_name = "saeu1iac"
    container_name = "tfstate"
    key = "iac.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
}


resource "azurerm_resource_group" "rg" {
  name = var.azure_rg
  location = var.azure_location
}

resource "azurerm_storage_account" "sa" {
  name = "saeu1iac"
  resource_group_name = var.azure_rg
  location = var.azure_location
  account_tier = "Standard"
  account_replication_type = "LRS"
  min_tls_version = "TLS1_2"
  
}

resource "azurerm_key_vault" "kv" {
  name = "kv-eu1iac"
  resource_group_name = var.azure_rg
  location = var.azure_location
  enabled_for_deployment = true
  enabled_for_template_deployment = true
  tenant_id = var.azure_tenant
  sku_name = var.azure_kv_sku
}