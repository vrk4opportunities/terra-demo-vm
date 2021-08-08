terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = ""
  features {}
}

resource "azurerm_resource_group" "terra-demo" {
  name     = "terra-demo-rg"
  location = "east us"
}