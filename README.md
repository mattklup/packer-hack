# packer-hack

## packer tutorial

Start from [here](https://learn.hashicorp.com/tutorials/packer/docker-get-started-build-image?in=packer/docker-get-started)

```
# From /packer/tutorial
packer init .
packer fmt .
packer validate .
packer build docker-ubuntu.pkr.hcl
docker images
```

## Codespace setup

```bash
az login --use-device-code
az account set --subscription <<preferred subscription>>
az account show

AZURE_SUBSCRIPTION_ID=$(az account show --query "id" --output tsv)
az ad sp create-for-rbac \
    --name "packer-arm" \
    --role contributor \
    --scopes /subscriptions/$AZURE_SUBSCRIPTION_ID \
    --sdk-auth

# Create required resources
az group create --location westus2 --resource-group mattklup-packerdemo
az storage account create --name mattklupvms --resource-group mattklup-packerdemo

# In github codespace secrets, setup:
# AZURE_CLIENT_ID
# AZURE_CLIENT_SECRET
# AZURE_SUBSCRIPTION_ID
# AZURE_TENANT_ID
source .devcontainer/setup-packer-variables.sh

```