terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }


}

provider "azurerm" {
  features {

  }
}


resource "azurerm_resource_group" "rg" {
  name     = "${var.azurerm_rg}devops"
  location = var.azurerm_location
}

module "azurerm_storage_account" {
  source                       = "./modules/storage"
  azurerm_storage_account_name = "saeu1devops"

}

module "azurerm_keyvault" {
  source = "./modules/kv"

}