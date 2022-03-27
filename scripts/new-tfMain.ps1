<#
.SYNOPSIS
.DESCRIPTION
.NOTES

#>


$azProvider = "
terraform {
required_providers{
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>2.99.0"
    }
}

}

"


New-Item -Path . -Name main.tf -ItemType File -Value $azProvider