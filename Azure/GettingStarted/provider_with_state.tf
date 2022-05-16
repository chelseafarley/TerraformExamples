terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Store tf state on Azure in storage container
terraform {
  backend "azurerm" {
      resource_group_name = "mc-terraform-tutorial"
      storage_account_name = "mcterraformtutorial"
      container_name = "mc-terraform-tutorial"
      key = "terraform.tfstate"
  }
}