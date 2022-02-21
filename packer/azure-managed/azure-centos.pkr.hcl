packer {
  required_plugins {
    azure = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/azure"
    }
  }
}

source "azure-arm" "centos" {
  client_id = "${var.client_id}"
  client_secret = "${var.client_secret}"
  subscription_id = "${var.subscription_id}"
  tenant_id = "${var.tenant_id}"

  managed_image_name = "MyCentOSImage"
  managed_image_resource_group_name = "${var.resource_group}"

  os_type = "Linux"
  image_offer = "CentOS"
  image_publisher = "OpenLogic"
  image_sku = "7.3"
  image_version = "latest"

  azure_tags = {
    user = "mattklup"
  }

  location = "westus2"
  vm_size = "Standard_A2"
}

build {
  sources = ["sources.azure-arm.centos"]
}
