output "workspace" {
  value = azurerm_security_center_workspace.la_workspace
}

output "solutions" {
  value = [azurerm_log_analytics_solution.la_workspace_security, azurerm_log_analytics_solution.la_workspace_securityfree]
}
