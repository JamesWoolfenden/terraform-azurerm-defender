resource "azurerm_security_center_setting" "setting_mcas" {
  setting_name = "MCAS"
  enabled      = false
}

resource "azurerm_security_center_setting" "setting_mde" {
  setting_name = "WDATP"
  enabled      = true
}


resource "azurerm_security_center_auto_provisioning" "auto-provisioning" {
  auto_provision = "On"
}


resource "azurerm_security_center_workspace" "la_workspace" {
  scope        = data.azurerm_subscription.current.id
  workspace_id = azurerm_log_analytics_workspace.la_workspace.id
}



