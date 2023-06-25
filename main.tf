#Azure VNet

#Issues
# Terraform init is not finding azurerm provider 

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azure_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "virtual_network" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space        = var.vnet_address_space
}

resource "azurerm_subnet" "local_subnet1" {
  name                = var.subnet1_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_prefix      = var.subnet1_address_prefix
}

resource "azurerm_subnet" "local_subnet2" {
  name                = var.subnet2_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_prefix      = var.subnet2_address_prefix
}

resource "azurerm_subnet" "local_subnet3" {
  name                = var.subnet3_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_prefix      = var.subnet3_address_prefix
}