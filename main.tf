terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">3.0"
    }
  }
}

provider "azurerm" {
   subscription_id = "393e3de3-0900-4b72-8f1b-fb3b1d6b97f1"
   client_id = "f5b9dcdb-f79a-439b-a393-e1bb9a6a6de9"
   client_secret = "Px88Q~z~MH3PFAu23fI5uhvvwpFccL2Jt0Zr7c_7"
   tenant_id = "7349d3b2-951f-41be-877e-d8ccd9f3e73c"
   skip_provider_registration = true
   features {}
}

resource "azurerm_resource_group" "test" {
  name     = "vincentTP2"
  location = "West Europe"
}
