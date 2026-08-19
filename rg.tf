##Creating a resource group
resource "azurerm_resource_group" "rgs" {
  for_each = var.rgvars
  name     = each.value.name
  location = each.value.location
}