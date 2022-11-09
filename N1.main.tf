


resource "azurerm_resource_group" "rg-wkspc" {
  count = 1
   provisioner "local-exec" {
    command = "az group list --query \"{ResourceGroup: '${local.naming_convention.name}'}\""
   
  }
  
  name     = (var.name == "local.naming_convention.name") ? local.naming_convention.name :  trimprefix(format("%0s%03d", local.naming_convention.name, 2), local.naming_convention.name)
  location = var.resource_group_location

  
}

 