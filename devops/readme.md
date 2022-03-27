# DevOps IaC resources

## Solution resources

### Storage Account Configuration
 These are the settings for the storage account
 
 - Name: sa-eu1iacstate
 - Resource group
 - Location
 - Account tier
 - Account replication type: LRS
 - Minimum TLS: 1.2
 
 ### Key Vault Configuration

 - Name: kv-eu1iac
 - Resource Group: var.azure_rg
 - Location: var.azure_location
 - sku Name: Standard
 - tenant id: 12b53659-ab0b-4662-a577-ca5c6d77264d
 - Enabled for deployment : true
 - Enabled for template deployment: true
 

 ## Setting up the Storage account for Terraform state management