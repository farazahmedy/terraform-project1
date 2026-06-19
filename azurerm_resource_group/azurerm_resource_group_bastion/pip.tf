resource "azurerm_public_ip" "bastion_pip" {
  name                = "bastion-pip"
  location            = "malaysiawest"
  resource_group_name = "rg_maven4"

  allocation_method = "Static"
  sku               = "Standard"
}