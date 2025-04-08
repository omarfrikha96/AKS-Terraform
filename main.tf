terraform { 
  required_version = ">= 1.3.0"
  required_providers { 
    azurerm = { 
      source = "hashicorp/azurerm"
      version = "~> 2.92.0"
    }
    azuread = {
      source = "hashicorp/azuread"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {
  features {}
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}
