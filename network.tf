resource "azurerm_virtual_network" "terra-demo" {
  name                = "terra-demo-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.terra-demo.location
  resource_group_name = azurerm_resource_group.terra-demo.name
}

resource "azurerm_subnet" "terra-demo" {
  name                 = "SubnetA"
  resource_group_name  = azurerm_resource_group.terra-demo.name
  virtual_network_name = azurerm_virtual_network.terra-demo.name
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_public_ip" "terra-demo" {
  name                = "terra-demo-machine01-pip"
  resource_group_name = azurerm_resource_group.terra-demo.name
  location            = azurerm_resource_group.terra-demo.location
  allocation_method   = "Static"
}