export PKR_VAR_resource_group=mattklup-packerdemo

export PKR_VAR_tenant_id=$(echo $AZURE_SERVICE_PRINCIPAL | jq -r .tenantId)
export PKR_VAR_subscription_id=$(echo $AZURE_SERVICE_PRINCIPAL | jq -r .subscriptionId)
export PKR_VAR_client_id=$(echo $AZURE_SERVICE_PRINCIPAL | jq -r .clientId)
export PKR_VAR_client_secret=$(echo $AZURE_SERVICE_PRINCIPAL | jq -r .clientSecret)
