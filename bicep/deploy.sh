az group create --location westus2 --name mattklup-vms
az deployment group create \
    --resource-group mattklup-vms \
    --template-file ./vm.bicep \
    --parameters adminUsername=mattklup osType=Linux adminPasswordOrKey=Mattklup2022
