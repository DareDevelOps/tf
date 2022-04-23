<#
.SYNOPSIS
Create a new Terraform module based on the project name
.DESCRIPTION
This is a simple interactive script to generate the basic file structure for a Terraform module.
If the project module already exists then you could substitute project name for sub-module name
for example if you needed toadd another resource type that needed a module of it's own
$Path would be sub-module name.
.NOTES
Author: Drew Burt
Creation Date: 3-26-2022
#>

#common parameters
$name = Read-Host -Prompt "Enter a name for your project or module"
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
# create a versions file
New-Item -ItemType File -Name versions.tf
