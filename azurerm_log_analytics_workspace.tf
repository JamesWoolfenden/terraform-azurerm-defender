resource "azurerm_log_analytics_workspace" "la_workspace" {
  name                = "mdc-security-workspace"
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = "PerGB2018"
}