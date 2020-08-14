provider "azurerm" {
  version = "~>2.0"
  features {}
}


resource "azurerm_resource_group" "rg" {
  name     = "myfirstrg"
  location = "eastus"
  #id =  "${resource_group_id}"
  tags = {
    environment = "first Resourse Group"
  }

}

resource "azurerm_resource_group" "rg1" {
  name     = "mysecondtrg"
  location = "eastus"
  tags = {
    environment = "second Resourse Group"
  }

}

output "id" {
     value = "${azurerm_resource_group.rg.id}"
     }
output "id1" {
     value = "${azurerm_resource_group.rg1.id}" 
     }
