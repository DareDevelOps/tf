<#
.SYNOPSIS
.DESCRIPTION
.NOTES
Author:
Creation Date:
#>

#common parameters
$name = Read-Host -Prompt "Enter a name for your project"
$path = '.'


#Create Folder
$path = New-Item -Path $path -Name $name -ItemType Directory
# Change to project directory
Set-Location -path $path
#Create sub folders
New-Item -Path $path -Name modules -ItemType Directory
#Create a main module
New-Item -ItemType File -Name main.tf
#Create variable file
New-Item -ItemType File -Name variable.tf
#create an output file
New-Item -ItemType File -Name output.tf
#create a module specification file
New-Item -ItemType File -Name readme.md
