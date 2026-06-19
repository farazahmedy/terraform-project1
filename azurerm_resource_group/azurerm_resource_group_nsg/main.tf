
resource "azurerm_network_security_group" "mavennsg" {
  for_each = var.nsg
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

   security_rule {

    name                       = each.value.name_security
    priority                   = 100
    direction                  = each.value.direction
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = each.value.destination_port_range
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}