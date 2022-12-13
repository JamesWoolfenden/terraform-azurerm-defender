resource "azurerm_security_center_subscription_pricing" "mdc_arm" {
  tier          = "Standard"
  resource_type = "Arm"
}

resource "azurerm_security_center_subscription_pricing" "mdc_servers" {
  tier          = "Standard"
  resource_type = "VirtualMachines"
}
