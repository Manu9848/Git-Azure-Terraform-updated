provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "Common"
    storage_account_name = "devsecopsb36devtfstate7"
    container_name       = "tfstate"
    key                  = "GitAzureTerraform.tfstate"
  }
}

provider "aws" {
}