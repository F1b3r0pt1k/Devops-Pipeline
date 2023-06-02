locals {
  name = "ep7"
}

resource "random_string" "main" {
  length  = 4
  upper   = false
  special = false
}


resource "azurerm_resource_group" "main" {
  location = var.location
  name     = "${local.name}-${random_string.main.result}-rg"
}