#!/bin/bash

#echo "Enter the Resource Group name:" &&
#read resourceGroupName &&
resourceGroupName="hkstg002rg"
#echo "Enter the location (i.e. centralus):" &&
location="centralus"

az group create --name $resourceGroupName --location $location
az group deployment create --resource-group $resourceGroupName --template-file "$HOME/azuredeploy.json"

echo 'Finished!'