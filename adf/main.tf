resource "azurerm_resource_group" "rg" {
  name = "rg-eu1dadf"
  location = "eastus"
}
 module "adf" {
   source = "./modules"
 }