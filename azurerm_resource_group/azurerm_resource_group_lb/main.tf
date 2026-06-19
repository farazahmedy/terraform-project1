resource "azurerm_public_ip" "mavenip11" {
  name                = "pipmavenlb"
  location            = "malaysiawest"
  resource_group_name = "rg_maven4"
  allocation_method   = "Static"
}

resource "azurerm_lb" "mavenlb" {
  name                = "TestLoadBalancermaven"
  location            = "malaysiawest"
  resource_group_name = "rg_maven4"

  frontend_ip_configuration {
    name                 = "PublicIPAddresslb"
    public_ip_address_id = azurerm_public_ip.mavenip11.id
  }
}
