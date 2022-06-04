resource "azurerm_data_factory" "adf" {
  name = "adf-eu1ddf1"
  location = "eastus"
  resource_group_name = "rg-eu1dadf"
  public_network_enabled = false
  
}