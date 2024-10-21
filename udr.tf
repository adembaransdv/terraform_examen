# Utiliser une data pour récupérer la table de routage UDR existante
data "azurerm_route_table" "udr" {
  name                = "UDR"
  resource_group_name = "Testrg"
}

# Associer la table de routage UDR à ton premier sous-réseau
resource "azurerm_subnet_route_table_association" "subnet_assoc_route_table_1" {
  subnet_id      = azurerm_subnet.subnet1.id
  route_table_id = data.azurerm_route_table.udr.id
}

# Associer la table de routage UDR à ton deuxième sous-réseau
resource "azurerm_subnet_route_table_association" "subnet_assoc_route_table_2" {
  subnet_id      = azurerm_subnet.subnet2.id
  route_table_id = data.azurerm_route_table.udr.id  
}
