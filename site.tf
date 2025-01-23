terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

variable "location" {
  type    = string
  default = "westeurope"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-auladevops-001"
  location = var.location
  tags = merge(var.tags, {
    "workspace" = "${terraform.workspace}"
    }
  )
}

resource "azurerm_storage_account" "site" {
  name                     = "stauladevops001"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = true

  static_website {
    index_document = "index.html"
  }
}
