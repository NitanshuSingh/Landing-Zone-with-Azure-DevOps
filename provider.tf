terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "1c4905ec-ec7a-4ea0-b9e1-6f5bb87e2c07"
}
