$rgName = 'rg-eu1iac'
$saName = 'saeu1iac'
$kvName = 'kv-eu1iac'
$keyVaultSpAppId =  (Get-AzADServicePrincipal -DisplayName 'Azure Key Vault').AppId
#'cfa8b339-82a2-471a-a3c9-0fc0be7a4093'
$sakeyName = "key1"
$userId = (Get-AzContext).Account.Id

$storageAccount = Get-AzStorageAccount -ResourceGroupName $rgName -StorageAccountName $saName

# Assign Azure role "Storage Account Key Operator Service Role" to Key Vault, limiting the access scope to your storage account. For a classic storage account, use "Classic Storage Account Key Operator Service Role."
New-AzRoleAssignment -ApplicationId $keyVaultSpAppId -RoleDefinitionName 'Storage Account Key Operator Service Role' -Scope $storageAccount.Id
# Give your user principal access to all storage account permissions, on your Key Vault instance

Set-AzKeyVaultAccessPolicy -VaultName $kvName -UserPrincipalName $userId -PermissionsToStorage get, list, delete, set, update, regeneratekey, getsas, listsas, deletesas, setsas, recover, backup, restore, purge

# Add your storage account to your Key Vault's managed storage accounts

Add-AzKeyVaultManagedStorageAccount -VaultName $kvName -AccountName $saName -AccountResourceId $storageAccount.Id -ActiveKeyName $sakeyName -DisableAutoRegenerateKey