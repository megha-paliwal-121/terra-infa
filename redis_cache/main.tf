# Create Redis Cache
resource "azurerm_redis_cache" "example" {
  name                = var.redis_cache_name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = 2
  family              = "C"  # Standard/Premium tier
  sku_name            = "Standard"
}
