terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "abcrg"
    storage_account_name = "abcstracc"
    container_name = "abcon"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
    features {}
    subscription_id = "5e4fafbb-ef69-4e17-8835-68030d81f758"
}