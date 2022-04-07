terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.0.2"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-eu1"
    storage_account_name = "saeu1iac"
    container_name = "tfsacg"
    key = "terraform.tfstatetfsacg"
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

resource "azurerm_shared_image_gallery" "acg" {
  name = var.azure_acg
  resource_group_name = var.azure_rg
  location = var.azure_location

}