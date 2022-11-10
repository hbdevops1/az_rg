# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.22.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    /* null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }     */
  }
}

# Provider Block
provider "azurerm" {
 features {}   
  skip_provider_registration = true       
}


