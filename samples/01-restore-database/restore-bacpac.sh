#!/bin/bash

# Strict mode, fail on any error
set -euo pipefail

# Download WideWorldImporters sample database from
# https://github.com/Microsoft/sql-server-samples/releases/tag/wide-world-importers-v1.0
# and upload it to an Azure Storage Account of your choice

# Update the following variables to set the correct Azure SQL tier and the sample you want to import.
# WideWorldImporters-Full requires Premium or BusinessCritical, while
# WideWorldImporters-Standard requires Standard or GeneralPurpose
declare storageResourceGroup="BC_Gen5_2"
declare bacpacFile="WideWorldImporters-Full.bacpac"

# Specify your credentials
declare sqlLogin=""
declare sqlPassword=""

# Update the following three variables
# to match your Azure enviroment and file position
declare sqlResourceGroup=""
declare sqlServer=""
declare sqlDatabase=""
declare sqlServiceObjective=""
declare storageAccount=""

storageKey=$(az storage account keys list -g $storageResourceGroup -n $storageAccount --query "[0].value" -o tsv)

az sql db create -g $sqlResourceGroup -s $sqlServer -n $sqlDatabase  --service-objective $storageResourceGroup

az sql db import\
    -g $sqlResourceGroup \
    -s $sqlServer \
    -n $sqlDatabase \
    -u $sqlLogin \
    -p $sqlPassword \
    --storage-key-type StorageAccessKey \
    --storage-key $storageKey \    
    --storage-uri https://$storageAccount.blob.core.windows.net/$bacpacFile
    
    
