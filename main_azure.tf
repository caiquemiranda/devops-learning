 "azurerm" ">provider "azurerm" {
  features {}
}

"azurerm_resource_group"">resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

 "resource_group_name" ">output "resource_group_name" {
  value = azurerm_resource_group.example.name
}
