<#
.DESCRIPTION
Add users to the keyvault access policy until we gett AD ready

#>

$objectId = (Get-AzADGroup -DisplayName iacContrib).id 

Set-AzKeyVaultAccessPolicy -ObjectId $objectId -VaultName kv-eu1iacstate -PermissionsToSecrets get, set, list, delete
