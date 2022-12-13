resource "azurerm_security_center_subscription_pricing" "pike" {
  #checkov:skip= CKV_AZURE_19: failed to evaluate pricing variable
  count         = length(var.pricing)
  tier          = var.pricing[count.index].tier
  resource_type = var.pricing[count.index].resource_type
}
