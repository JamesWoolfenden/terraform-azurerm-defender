
resource "azurerm_log_analytics_solution" "la_workspace_security" {
  solution_name         = "Security"
  location              = var.location
  resource_group_name   = var.rg_name
  workspace_resource_id = azurerm_log_analytics_workspace.la_workspace.id
  workspace_name        = azurerm_log_analytics_workspace.la_workspace.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/Security"
  }
  tags = var.tags
}

resource "azurerm_log_analytics_solution" "la_workspace_securityfree" {
  solution_name         = "SecurityCenterFree"
  location              = var.location
  resource_group_name   = var.rg_name
  workspace_resource_id = azurerm_log_analytics_workspace.la_workspace.id
  workspace_name        = azurerm_log_analytics_workspace.la_workspace.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/SecurityCenterFree"
  }
  tags = var.tags
}

