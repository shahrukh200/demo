resource "azurerm_resource_group" "rg" {
name = var.resource_group_name
location = var.resource_group_location
}
resource "azurerm_virtual_network" "vnet" {
    name = var.virtual_network_name
    address_space = [var.addres_space]
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    depends_on = [ azurerm_resource_group.rg ]
}
resource "azurerm_subnet" "ms" {
for_each = var.subnet_details
name=each.key
address_prefixes = [each.value.addres_prefix] 
virtual_network_name = azurerm_virtual_network.vnet.name
resource_group_name = azurerm_resource_group.rg.name
depends_on = [ azurerm_resource_group.rg, azurerm_virtual_network.vnet ]
}
