# Configure Terraform to set the required AzureRM provider
# version and features{} block.
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.89.0"
      configuration_aliases = [
        azurerm.connectivity,
        azurerm.management,
        azurerm.online,
      ]
    }
  }
}

provider "azurerm" {  
  # Configuration options 
   features{}      
  
}


data "azurerm_client_config" "core" {}

# Declare a standard provider block using your preferred configuration.
# This will be used for the deployment of all "Management resources" to the specified `subscription_id`.

# provider "azurerm" {
#   alias           = "connectivity"
#   subscription_id = "825f3557-f112-4eb8-9524-075dee207d64"
#   features {}
# }


module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"  
  version = "1.1.1"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm  
    azurerm.online       = azurerm 
    
  }

  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = var.root_id
  root_name      = var.root_name
  library_path   = "${path.root}/lib"

  #subscription_id_connectivity  = data.azurerm_client_config.core.subscription_id

  #subscription_id_production  = data.azurerm_client_config.core.subscription_id

  #subscription_id_corporate  = data.azurerm_client_config.core.subscription_id
}