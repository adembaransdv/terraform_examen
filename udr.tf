data "azurerm_route_table" "udr" {
  name                = "UDR"
  location            = "West Europe"
  resource_group_name = "Testrg"
}

resource "azurerm_subnet_route_table_association" "subnet_assoc_route_table_1" {
  subnet_id      = azurerm_subnet.subnet1.id
  route_table_id = azurerm_route_table.udr.id
   
}

resource "azurerm_subnet_route_table_association" "subnet_assoc_route_table_2" {
  subnet_id      = azurerm_subnet.subnet2.id
  route_table_id = azurerm_route_table.udr.id
}
