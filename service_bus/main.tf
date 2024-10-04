# Create Azure Service Bus Namespace
resource "azurerm_servicebus_namespace" "example" {
  name                = var.namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"  # Choose "Basic", "Standard", or "Premium"
}

# Create Azure Service Bus Queue
resource "azurerm_servicebus_queue" "example" {
  name         = var.queue_name
  namespace_id = azurerm_servicebus_namespace.example.id  # Use namespace_id instead of namespace_name
}
