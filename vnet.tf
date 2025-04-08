resource "azurerm_virtual_network" "aks_vnet" {
  name                = "${var.prefix}-vnet"
  address_space       = [var.vnet_cidr]
  location            = var.AZURE_DEFAULT_REGION
  resource_group_name = azurerm_resource_group.aks_rg.name
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "aks-subnet"
  resource_group_name  = azurerm_resource_group.aks_rg.name
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  address_prefixes     = var.subnets
}
