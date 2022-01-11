# Get the current client configuration from the AzureRM provider.
# This is used to populate the root_parent_id variable with the
# current Tenant ID used as the ID for the "Tenant Root Group"
# Management Group.

#data "azurerm_client_config" "core" {}

# Declare the Terraform Module for Cloud Adoption Framework
# Enterprise-scale and provide a base configuration.

/* module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"  
  version = "1.1.1"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm  
    azurerm.production   = azurerm 
    
  } */
  
 
  /* root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = var.root_id
  root_name      = var.root_name
  library_path   = "${path.root}/lib" */

  /* custom_landing_zones = {
    
    "${var.root_id}-production" = {
      #display_name               = "${upper(var.root_id)} Production"
      display_name               = "Production"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {}
        access_control = {}
      }
    }

    "${var.root_id}-non-production" = {
      #display_name               = "${upper(var.root_id)} Non Production"
      display_name               = "Non Production"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {}
        access_control = {}
      }
    }

    "${var.root_id}-decommissioned" = {
      #display_name               = "${upper(var.root_id)} Deommissioned"
      display_name               = "Decommissioned"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {}
        access_control = {}
      }
    }
    "${var.root_id}-sandbox" = {
      #display_name               = "${upper(var.root_id)} Sandbox"
      display_name               = "Sandbox"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {
          Deny-Resource-Locations = {
            listOfAllowedLocations = ["eastus",]
          }
          Deny-RSG-Locations = {
            listOfAllowedLocations = ["Japan East",]
          }
        }
        access_control = {}
      }
    }
  } */
  # deploy_connectivity_resources = true
 
  #subscription_id_production  = data.azurerm_client_config.core.subscription_id
  #subscription_id_connectivity  = data.azurerm_client_config.core.subscription_id
  #subscription_id_identity  = data.azurerm_client_config.core.subscription_id
  #subscription_id_management  = data.azurerm_client_config.core.subscription_id
  
#}