# Create an Azure Entra ID Application
resource "azuread_application" "example" {
  display_name = "MyEntraApp"
}

# Create an Azure Entra ID Service Principal using application_id
resource "azuread_service_principal" "example" {
  application_id = azuread_application.example.application_id
}
