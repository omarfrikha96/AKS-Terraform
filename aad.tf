resource "azurerm_role_assignment" "aks_admin" {
  principal_id   = data.azuread_client_config.current.client_id
  role_definition_name = "Owner"
  scope          = azurerm_subscription.primary.id
}