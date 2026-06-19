resource "azurerm_bastion_host" "bastionmaven" {

  for_each = var.bastionmaven

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = each.value.name_ip

    subnet_id = each.value.subnet_id

    public_ip_address_id = azurerm_public_ip.bastion_pip.id
  }
}