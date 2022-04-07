<#
.DESCRIPTION
Create a new blob storage container
#>
$stAccountContext = New-AzStorageContext -StorageAccountName saeu1iac
$cName =  Read-Host -Prompt "please enter a name for the blob container you want to create."

New-AzStorageContainer -Name $cName -Permission Blob -Context $stAccountContext