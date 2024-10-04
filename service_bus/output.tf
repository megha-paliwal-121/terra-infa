output "service_bus_namespace" {
  value = azurerm_servicebus_namespace.example.name
}

output "service_bus_queue" {
  value = azurerm_servicebus_queue.example.name
}
