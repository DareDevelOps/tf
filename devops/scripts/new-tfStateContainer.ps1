<##>
.DESCRIPTION
Create Terraform state containers to manage Terraform state files for solutions.
 .SYNOPSIS
.NOTES
Author: Drew Burt
Creation Date:

#>
$rgName = "rg-eu1iac"

$containerName = New-AzStorageContainer -Name tfstate -Permission Blob
$keyName = "tfsDevops"
$saAccessKey = (Get-AzStorageAccountKey -ResourceGroupName $rgName -Name $storageAccountName)[0].value


$storageAccountName = "saeu1iac"
$saCtx =  New-AzStorageContext -StorageAccountName $storageAccountName -UseConnectedAccount

New-AzStorageContainer -Name "tfsdevops" -Permission Blob -Context $saCtx