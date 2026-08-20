
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dev-rg1100"
    storage_account_name = "devst1100"
    container_name       = "tfstate"
    key                  = "terraform2.tfstate"
  }
}

provider "azurerm" {
  features {}
}
