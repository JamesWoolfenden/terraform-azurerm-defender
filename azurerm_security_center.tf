resource "azurerm_security_center_setting" "setting_mcas" {
  setting_name = "MCAS"
  enabled      = var.MCAS_enabled
}

resource "azurerm_security_center_setting" "setting_mde" {
  setting_name = "WDATP"
  enabled      = var.WDATP_enabled
}

resource "azurerm_security_center_setting" "setting_sentinel" {
  setting_name = "SENTINEL"
  enabled      = var.SENTINEL_enabled
}


resource "azurerm_security_center_auto_provisioning" "auto-provisioning" {
  auto_provision = "On"
}


resource "azurerm_security_center_workspace" "la_workspace" {
  scope        = data.azurerm_subscription.current.id
  workspace_id = azurerm_log_analytics_workspace.la_workspace.id
}
