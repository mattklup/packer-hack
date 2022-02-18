packer {
  required_plugins {
    azure = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/azure"
    }
  }
}

source "azure-arm" "basic-example" {
  client_id = "${var.client_id}"
  client_secret = "${var.client_secret}"
  resource_group_name = "mattklup-packerdemo"
  storage_account = "mattklupvms"
  subscription_id = "${var.subscription_id}"
  tenant_id = "${var.tenant_id}"

  capture_container_name = "images"
  capture_name_prefix = "packer"

  os_type = "Linux"
  image_publisher = "Canonical"
  image_offer = "UbuntuServer"
  image_sku = "14.04.4-LTS"

  azure_tags = {
    dept = "engineering"
  }

  location = "westus2"
  vm_size = "Standard_A2"
}

build {
  sources = ["sources.azure-arm.basic-example"]
}
