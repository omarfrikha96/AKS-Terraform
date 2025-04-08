resource "azurerm_network_security_group" "aks_nsg" {
  name                = "aks-nsg"
  location            = var.AZURE_DEFAULT_REGION
  resource_group_name = azurerm_resource_group.aks_rg.name

  security_rule {
    name                       = "allow-ssh"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    Environment = var.env
  }
}